/**
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

// expected-to-throw

graphql`
  fragment myRootFragment on User {
    name
  }
`

/**
 * @RelayResolver
 *
 * @onType User
 * @fieldName my_field
 * @rootFragment missingFragment
 */