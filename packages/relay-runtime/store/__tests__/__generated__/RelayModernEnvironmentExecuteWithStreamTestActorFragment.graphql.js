/**
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * 
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @generated SignedSource<<3290ad55c613089d8f61f69ed7fb941f>>
 * @flow
 * @lightSyntaxTransform
 * @nogrep
 */

/* eslint-disable */

'use strict';

/*::
import type { Fragment, ReaderFragment } from 'relay-runtime';
import type { FragmentType } from "relay-runtime";
declare export opaque type RelayModernEnvironmentExecuteWithStreamTestActorFragment$fragmentType: FragmentType;
export type RelayModernEnvironmentExecuteWithStreamTestActorFragment$ref = RelayModernEnvironmentExecuteWithStreamTestActorFragment$fragmentType;
export type RelayModernEnvironmentExecuteWithStreamTestActorFragment$data = {|
  +name: ?string,
  +$fragmentType: RelayModernEnvironmentExecuteWithStreamTestActorFragment$fragmentType,
|};
export type RelayModernEnvironmentExecuteWithStreamTestActorFragment = RelayModernEnvironmentExecuteWithStreamTestActorFragment$data;
export type RelayModernEnvironmentExecuteWithStreamTestActorFragment$key = {
  +$data?: RelayModernEnvironmentExecuteWithStreamTestActorFragment$data,
  +$fragmentSpreads: RelayModernEnvironmentExecuteWithStreamTestActorFragment$fragmentType,
  ...
};
*/

var node/*: ReaderFragment*/ = {
  "argumentDefinitions": [],
  "kind": "Fragment",
  "metadata": null,
  "name": "RelayModernEnvironmentExecuteWithStreamTestActorFragment",
  "selections": [
    {
      "alias": "name",
      "args": null,
      "kind": "ScalarField",
      "name": "__name_name_handler",
      "storageKey": null
    }
  ],
  "type": "User",
  "abstractKey": null
};

if (__DEV__) {
  (node/*: any*/).hash = "c592f9f5c7d3d880fd428b335539a35e";
}

module.exports = ((node/*: any*/)/*: Fragment<
  RelayModernEnvironmentExecuteWithStreamTestActorFragment$fragmentType,
  RelayModernEnvironmentExecuteWithStreamTestActorFragment$data,
>*/);
