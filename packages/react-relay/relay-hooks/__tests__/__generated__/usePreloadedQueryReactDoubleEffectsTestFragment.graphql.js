/**
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * 
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @generated SignedSource<<2acd8fdd0438674df38d6a50c1a21d94>>
 * @flow
 * @lightSyntaxTransform
 * @nogrep
 */

/* eslint-disable */

'use strict';

/*::
import type { Fragment, ReaderFragment } from 'relay-runtime';
import type { FragmentType } from "relay-runtime";
declare export opaque type usePreloadedQueryReactDoubleEffectsTestFragment$fragmentType: FragmentType;
export type usePreloadedQueryReactDoubleEffectsTestFragment$ref = usePreloadedQueryReactDoubleEffectsTestFragment$fragmentType;
export type usePreloadedQueryReactDoubleEffectsTestFragment$data = {|
  +firstName: ?string,
  +$fragmentType: usePreloadedQueryReactDoubleEffectsTestFragment$fragmentType,
|};
export type usePreloadedQueryReactDoubleEffectsTestFragment = usePreloadedQueryReactDoubleEffectsTestFragment$data;
export type usePreloadedQueryReactDoubleEffectsTestFragment$key = {
  +$data?: usePreloadedQueryReactDoubleEffectsTestFragment$data,
  +$fragmentSpreads: usePreloadedQueryReactDoubleEffectsTestFragment$fragmentType,
  ...
};
*/

var node/*: ReaderFragment*/ = {
  "argumentDefinitions": [],
  "kind": "Fragment",
  "metadata": null,
  "name": "usePreloadedQueryReactDoubleEffectsTestFragment",
  "selections": [
    {
      "alias": null,
      "args": null,
      "kind": "ScalarField",
      "name": "firstName",
      "storageKey": null
    }
  ],
  "type": "User",
  "abstractKey": null
};

if (__DEV__) {
  (node/*: any*/).hash = "a43d250232fe13605245eff128073c51";
}

module.exports = ((node/*: any*/)/*: Fragment<
  usePreloadedQueryReactDoubleEffectsTestFragment$fragmentType,
  usePreloadedQueryReactDoubleEffectsTestFragment$data,
>*/);
