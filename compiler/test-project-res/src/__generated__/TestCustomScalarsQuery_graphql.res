/* @sourceLoc Test_customScalars.res */
/* @generated */
%%raw("/* @generated */")
module Types = {
  @@ocaml.warning("-30")

  type rec response_member_User = {
    __typename: [ | #User],
    createdAt: Datetime.t,
  }
  and response_member = [
    | #User(response_member_User)
    | #UnselectedUnionMember(string)
  ]

  type rec response_loggedInUser_friends = {
    createdAt: Datetime.t,
  }
  and response_loggedInUser = {
    createdAt: Datetime.t,
    friends: array<response_loggedInUser_friends>,
  }
  type response = {
    loggedInUser: response_loggedInUser,
    member: option<response_member>,
  }
  type rawResponse = response
  type variables = {
    beforeDate: option<Datetime.t>,
  }
  type refetchVariables = {
    beforeDate: option<Datetime.t>,
  }
  let makeRefetchVariables = (
    ~beforeDate=?,
    ()
  ): refetchVariables => {
    beforeDate: beforeDate
  }
}

let unwrap_response_member: {. "__typename": string } => [
  | #User(Types.response_member_User)
  | #UnselectedUnionMember(string)
] = u => switch u["__typename"] {
  | "User" => #User(u->Obj.magic)
  | v => #UnselectedUnionMember(v)
}

let wrap_response_member: [
  | #User(Types.response_member_User)
  | #UnselectedUnionMember(string)
] => {. "__typename": string } = v => switch v {
  | #User(v) => v->Obj.magic
  | #UnselectedUnionMember(v) => {"__typename": v}
}
module Internal = {
  let variablesConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{"__root":{"beforeDate":{"n":"","c":"Datetime"}}}`
  )
  let variablesConverterMap = {
    "Datetime": Datetime.serialize,
  }
  let convertVariables = v => v->RescriptRelay.convertObj(
    variablesConverter,
    variablesConverterMap,
    Js.undefined
  )
  type wrapResponseRaw
  let wrapResponseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{"__root":{"member_User_createdAt":{"c":"Datetime"},"member":{"u":"response_member","n":""},"loggedInUser_friends_createdAt":{"c":"Datetime"},"loggedInUser_createdAt":{"c":"Datetime"}}}`
  )
  let wrapResponseConverterMap = {
    "Datetime": Datetime.serialize,
    "response_member": wrap_response_member,
  }
  let convertWrapResponse = v => v->RescriptRelay.convertObj(
    wrapResponseConverter,
    wrapResponseConverterMap,
    Js.null
  )
  type responseRaw
  let responseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{"__root":{"member_User_createdAt":{"c":"Datetime"},"member":{"u":"response_member","n":""},"loggedInUser_friends_createdAt":{"c":"Datetime"},"loggedInUser_createdAt":{"c":"Datetime"}}}`
  )
  let responseConverterMap = {
    "Datetime": Datetime.parse,
    "response_member": unwrap_response_member,
  }
  let convertResponse = v => v->RescriptRelay.convertObj(
    responseConverter,
    responseConverterMap,
    Js.undefined
  )
  type wrapRawResponseRaw = wrapResponseRaw
  let convertWrapRawResponse = convertWrapResponse
  type rawResponseRaw = responseRaw
  let convertRawResponse = convertResponse
}

type queryRef

module Utils = {
  @@ocaml.warning("-33")
  open Types
  let makeVariables = (
    ~beforeDate=?,
    ()
  ): variables => {
    beforeDate: beforeDate
  }
}

type relayOperationNode
type operationType = RescriptRelay.queryNode<relayOperationNode>


let node: operationType = %raw(json` (function(){
var v0 = [
  {
    "defaultValue": null,
    "kind": "LocalArgument",
    "name": "beforeDate"
  }
],
v1 = {
  "alias": null,
  "args": null,
  "kind": "ScalarField",
  "name": "createdAt",
  "storageKey": null
},
v2 = [
  {
    "kind": "Variable",
    "name": "beforeDate",
    "variableName": "beforeDate"
  }
],
v3 = [
  (v1/*: any*/)
],
v4 = [
  {
    "kind": "Literal",
    "name": "id",
    "value": "user-1"
  }
],
v5 = {
  "alias": null,
  "args": null,
  "kind": "ScalarField",
  "name": "__typename",
  "storageKey": null
},
v6 = {
  "kind": "InlineFragment",
  "selections": (v3/*: any*/),
  "type": "User",
  "abstractKey": null
},
v7 = {
  "alias": null,
  "args": null,
  "kind": "ScalarField",
  "name": "id",
  "storageKey": null
};
return {
  "fragment": {
    "argumentDefinitions": (v0/*: any*/),
    "kind": "Fragment",
    "metadata": null,
    "name": "TestCustomScalarsQuery",
    "selections": [
      {
        "alias": null,
        "args": null,
        "concreteType": "User",
        "kind": "LinkedField",
        "name": "loggedInUser",
        "plural": false,
        "selections": [
          (v1/*: any*/),
          {
            "alias": null,
            "args": (v2/*: any*/),
            "concreteType": "User",
            "kind": "LinkedField",
            "name": "friends",
            "plural": true,
            "selections": (v3/*: any*/),
            "storageKey": null
          }
        ],
        "storageKey": null
      },
      {
        "alias": null,
        "args": (v4/*: any*/),
        "concreteType": null,
        "kind": "LinkedField",
        "name": "member",
        "plural": false,
        "selections": [
          (v5/*: any*/),
          (v6/*: any*/)
        ],
        "storageKey": "member(id:\"user-1\")"
      }
    ],
    "type": "Query",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": (v0/*: any*/),
    "kind": "Operation",
    "name": "TestCustomScalarsQuery",
    "selections": [
      {
        "alias": null,
        "args": null,
        "concreteType": "User",
        "kind": "LinkedField",
        "name": "loggedInUser",
        "plural": false,
        "selections": [
          (v1/*: any*/),
          {
            "alias": null,
            "args": (v2/*: any*/),
            "concreteType": "User",
            "kind": "LinkedField",
            "name": "friends",
            "plural": true,
            "selections": [
              (v1/*: any*/),
              (v7/*: any*/)
            ],
            "storageKey": null
          },
          (v7/*: any*/)
        ],
        "storageKey": null
      },
      {
        "alias": null,
        "args": (v4/*: any*/),
        "concreteType": null,
        "kind": "LinkedField",
        "name": "member",
        "plural": false,
        "selections": [
          (v5/*: any*/),
          (v6/*: any*/),
          {
            "kind": "InlineFragment",
            "selections": [
              (v7/*: any*/)
            ],
            "type": "Node",
            "abstractKey": "__isNode"
          }
        ],
        "storageKey": "member(id:\"user-1\")"
      }
    ]
  },
  "params": {
    "cacheID": "80bb10beb4efd88946265edbf89c6be9",
    "id": null,
    "metadata": {},
    "name": "TestCustomScalarsQuery",
    "operationKind": "query",
    "text": "query TestCustomScalarsQuery(\n  $beforeDate: Datetime\n) {\n  loggedInUser {\n    createdAt\n    friends(beforeDate: $beforeDate) {\n      createdAt\n      id\n    }\n    id\n  }\n  member(id: \"user-1\") {\n    __typename\n    ... on User {\n      createdAt\n    }\n    ... on Node {\n      __typename\n      __isNode: __typename\n      id\n    }\n  }\n}\n"
  }
};
})() `)

include RescriptRelay.MakeLoadQuery({
    type variables = Types.variables
    type loadedQueryRef = queryRef
    type response = Types.response
    type node = relayOperationNode
    let query = node
    let convertVariables = Internal.convertVariables
});