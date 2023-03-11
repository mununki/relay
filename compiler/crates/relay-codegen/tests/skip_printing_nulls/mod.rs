/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

use std::sync::Arc;

use common::FeatureFlag;
use common::FeatureFlags;
use common::SourceLocationKey;
use fixture_tests::Fixture;
use graphql_ir::build;
use graphql_ir::ExecutableDefinition;
use graphql_syntax::parse_executable;
use relay_codegen::print_fragment;
use relay_codegen::print_operation;
use relay_config::ProjectConfig;
use relay_test_schema::TEST_SCHEMA;

pub fn transform_fixture(fixture: &Fixture<'_>) -> Result<String, String> {
    let ast = parse_executable(
        fixture.content,
        SourceLocationKey::standalone(fixture.file_name),
    )
    .unwrap();
    let feature_flags = FeatureFlags {
        skip_printing_nulls: FeatureFlag::Enabled,
        ..Default::default()
    };

    build(&TEST_SCHEMA, &ast.definitions)
        .map(|definitions| {
            definitions
                .iter()
                .map(|def| match def {
                    ExecutableDefinition::Operation(operation) => {
                        let mut import_statements = Default::default();

                        let operation = print_operation(
                            &TEST_SCHEMA,
                            operation,
                            &ProjectConfig {
                                feature_flags: Arc::new(feature_flags.clone()),
                                ..Default::default()
                            },
                            &mut import_statements,
                        );
                        format!("{}{}", import_statements, operation)
                    }
                    ExecutableDefinition::Fragment(fragment) => {
                        let mut import_statements = Default::default();

                        let fragment = print_fragment(
                            &TEST_SCHEMA,
                            fragment,
                            &ProjectConfig {
                                feature_flags: Arc::new(feature_flags.clone()),
                                ..Default::default()
                            },
                            &mut import_statements,
                        );
                        format!("{}{}", import_statements, fragment)
                    }
                })
                .collect::<Vec<_>>()
                .join("\n\n")
        })
        .map_err(|errors| {
            errors
                .into_iter()
                .map(|error| format!("{:?}", error))
                .collect::<Vec<_>>()
                .join("\n\n")
        })
}
