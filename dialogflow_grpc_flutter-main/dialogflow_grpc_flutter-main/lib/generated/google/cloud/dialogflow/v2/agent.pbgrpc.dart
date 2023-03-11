///
//  Generated code. Do not modify.
//  source: google/cloud/dialogflow/v2/agent.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'agent.pb.dart' as $2;
import '../../../protobuf/empty.pb.dart' as $1;
import '../../../longrunning/operations.pb.dart' as $0;
import 'validation_result.pb.dart' as $3;
export 'agent.pb.dart';

class AgentsClient extends $grpc.Client {
  static final _$getAgent = $grpc.ClientMethod<$2.GetAgentRequest, $2.Agent>(
      '/google.cloud.dialogflow.v2.Agents/GetAgent',
      ($2.GetAgentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Agent.fromBuffer(value));
  static final _$setAgent = $grpc.ClientMethod<$2.SetAgentRequest, $2.Agent>(
      '/google.cloud.dialogflow.v2.Agents/SetAgent',
      ($2.SetAgentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Agent.fromBuffer(value));
  static final _$deleteAgent =
      $grpc.ClientMethod<$2.DeleteAgentRequest, $1.Empty>(
          '/google.cloud.dialogflow.v2.Agents/DeleteAgent',
          ($2.DeleteAgentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$searchAgents =
      $grpc.ClientMethod<$2.SearchAgentsRequest, $2.SearchAgentsResponse>(
          '/google.cloud.dialogflow.v2.Agents/SearchAgents',
          ($2.SearchAgentsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SearchAgentsResponse.fromBuffer(value));
  static final _$trainAgent =
      $grpc.ClientMethod<$2.TrainAgentRequest, $0.Operation>(
          '/google.cloud.dialogflow.v2.Agents/TrainAgent',
          ($2.TrainAgentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$exportAgent =
      $grpc.ClientMethod<$2.ExportAgentRequest, $0.Operation>(
          '/google.cloud.dialogflow.v2.Agents/ExportAgent',
          ($2.ExportAgentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$importAgent =
      $grpc.ClientMethod<$2.ImportAgentRequest, $0.Operation>(
          '/google.cloud.dialogflow.v2.Agents/ImportAgent',
          ($2.ImportAgentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$restoreAgent =
      $grpc.ClientMethod<$2.RestoreAgentRequest, $0.Operation>(
          '/google.cloud.dialogflow.v2.Agents/RestoreAgent',
          ($2.RestoreAgentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Operation.fromBuffer(value));
  static final _$getValidationResult =
      $grpc.ClientMethod<$2.GetValidationResultRequest, $3.ValidationResult>(
          '/google.cloud.dialogflow.v2.Agents/GetValidationResult',
          ($2.GetValidationResultRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ValidationResult.fromBuffer(value));

  AgentsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Agent> getAgent($2.GetAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAgent, request, options: options);
  }

  $grpc.ResponseFuture<$2.Agent> setAgent($2.SetAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAgent, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteAgent($2.DeleteAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAgent, request, options: options);
  }

  $grpc.ResponseFuture<$2.SearchAgentsResponse> searchAgents(
      $2.SearchAgentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchAgents, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> trainAgent($2.TrainAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$trainAgent, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> exportAgent($2.ExportAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$exportAgent, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> importAgent($2.ImportAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$importAgent, request, options: options);
  }

  $grpc.ResponseFuture<$0.Operation> restoreAgent(
      $2.RestoreAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$restoreAgent, request, options: options);
  }

  $grpc.ResponseFuture<$3.ValidationResult> getValidationResult(
      $2.GetValidationResultRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getValidationResult, request, options: options);
  }
}

abstract class AgentsServiceBase extends $grpc.Service {
  $core.String get $name => 'google.cloud.dialogflow.v2.Agents';

  AgentsServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.GetAgentRequest, $2.Agent>(
        'GetAgent',
        getAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetAgentRequest.fromBuffer(value),
        ($2.Agent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SetAgentRequest, $2.Agent>(
        'SetAgent',
        setAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SetAgentRequest.fromBuffer(value),
        ($2.Agent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteAgentRequest, $1.Empty>(
        'DeleteAgent',
        deleteAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteAgentRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SearchAgentsRequest, $2.SearchAgentsResponse>(
            'SearchAgents',
            searchAgents_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SearchAgentsRequest.fromBuffer(value),
            ($2.SearchAgentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TrainAgentRequest, $0.Operation>(
        'TrainAgent',
        trainAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TrainAgentRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ExportAgentRequest, $0.Operation>(
        'ExportAgent',
        exportAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ExportAgentRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ImportAgentRequest, $0.Operation>(
        'ImportAgent',
        importAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ImportAgentRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RestoreAgentRequest, $0.Operation>(
        'RestoreAgent',
        restoreAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RestoreAgentRequest.fromBuffer(value),
        ($0.Operation value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.GetValidationResultRequest, $3.ValidationResult>(
            'GetValidationResult',
            getValidationResult_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetValidationResultRequest.fromBuffer(value),
            ($3.ValidationResult value) => value.writeToBuffer()));
  }

  $async.Future<$2.Agent> getAgent_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetAgentRequest> request) async {
    return getAgent(call, await request);
  }

  $async.Future<$2.Agent> setAgent_Pre(
      $grpc.ServiceCall call, $async.Future<$2.SetAgentRequest> request) async {
    return setAgent(call, await request);
  }

  $async.Future<$1.Empty> deleteAgent_Pre($grpc.ServiceCall call,
      $async.Future<$2.DeleteAgentRequest> request) async {
    return deleteAgent(call, await request);
  }

  $async.Future<$2.SearchAgentsResponse> searchAgents_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.SearchAgentsRequest> request) async {
    return searchAgents(call, await request);
  }

  $async.Future<$0.Operation> trainAgent_Pre($grpc.ServiceCall call,
      $async.Future<$2.TrainAgentRequest> request) async {
    return trainAgent(call, await request);
  }

  $async.Future<$0.Operation> exportAgent_Pre($grpc.ServiceCall call,
      $async.Future<$2.ExportAgentRequest> request) async {
    return exportAgent(call, await request);
  }

  $async.Future<$0.Operation> importAgent_Pre($grpc.ServiceCall call,
      $async.Future<$2.ImportAgentRequest> request) async {
    return importAgent(call, await request);
  }

  $async.Future<$0.Operation> restoreAgent_Pre($grpc.ServiceCall call,
      $async.Future<$2.RestoreAgentRequest> request) async {
    return restoreAgent(call, await request);
  }

  $async.Future<$3.ValidationResult> getValidationResult_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetValidationResultRequest> request) async {
    return getValidationResult(call, await request);
  }

  $async.Future<$2.Agent> getAgent(
      $grpc.ServiceCall call, $2.GetAgentRequest request);
  $async.Future<$2.Agent> setAgent(
      $grpc.ServiceCall call, $2.SetAgentRequest request);
  $async.Future<$1.Empty> deleteAgent(
      $grpc.ServiceCall call, $2.DeleteAgentRequest request);
  $async.Future<$2.SearchAgentsResponse> searchAgents(
      $grpc.ServiceCall call, $2.SearchAgentsRequest request);
  $async.Future<$0.Operation> trainAgent(
      $grpc.ServiceCall call, $2.TrainAgentRequest request);
  $async.Future<$0.Operation> exportAgent(
      $grpc.ServiceCall call, $2.ExportAgentRequest request);
  $async.Future<$0.Operation> importAgent(
      $grpc.ServiceCall call, $2.ImportAgentRequest request);
  $async.Future<$0.Operation> restoreAgent(
      $grpc.ServiceCall call, $2.RestoreAgentRequest request);
  $async.Future<$3.ValidationResult> getValidationResult(
      $grpc.ServiceCall call, $2.GetValidationResultRequest request);
}
