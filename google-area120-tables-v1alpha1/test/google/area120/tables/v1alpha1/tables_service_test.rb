# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/area120/tables/v1alpha1/tables_pb"
require "google/area120/tables/v1alpha1/tables_services_pb"
require "google/area120/tables/v1alpha1/tables_service"

class ::Google::Area120::Tables::V1alpha1::TablesService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_get_table
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::Table.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_table_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_table, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::GetTableRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_table_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_table({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_table name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_table ::Google::Area120::Tables::V1alpha1::GetTableRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_table({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_table ::Google::Area120::Tables::V1alpha1::GetTableRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_table_client_stub.call_rpc_count
    end
  end

  def test_list_tables
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::ListTablesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    page_size = 42
    page_token = "hello world"

    list_tables_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_tables, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::ListTablesRequest, request
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_tables_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_tables({ page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_tables page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_tables ::Google::Area120::Tables::V1alpha1::ListTablesRequest.new(page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_tables({ page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_tables ::Google::Area120::Tables::V1alpha1::ListTablesRequest.new(page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_tables_client_stub.call_rpc_count
    end
  end

  def test_get_workspace
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::Workspace.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_workspace_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_workspace, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::GetWorkspaceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_workspace_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_workspace({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_workspace name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_workspace ::Google::Area120::Tables::V1alpha1::GetWorkspaceRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_workspace({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_workspace ::Google::Area120::Tables::V1alpha1::GetWorkspaceRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_workspace_client_stub.call_rpc_count
    end
  end

  def test_list_workspaces
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::ListWorkspacesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    page_size = 42
    page_token = "hello world"

    list_workspaces_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_workspaces, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::ListWorkspacesRequest, request
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_workspaces_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_workspaces({ page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_workspaces page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_workspaces ::Google::Area120::Tables::V1alpha1::ListWorkspacesRequest.new(page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_workspaces({ page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_workspaces ::Google::Area120::Tables::V1alpha1::ListWorkspacesRequest.new(page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_workspaces_client_stub.call_rpc_count
    end
  end

  def test_get_row
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::Row.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :VIEW_UNSPECIFIED

    get_row_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_row, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::GetRowRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_row_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_row({ name: name, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_row name: name, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_row ::Google::Area120::Tables::V1alpha1::GetRowRequest.new(name: name, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_row({ name: name, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_row ::Google::Area120::Tables::V1alpha1::GetRowRequest.new(name: name, view: view), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_row_client_stub.call_rpc_count
    end
  end

  def test_list_rows
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::ListRowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    view = :VIEW_UNSPECIFIED
    filter = "hello world"

    list_rows_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_rows, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::ListRowsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal :VIEW_UNSPECIFIED, request["view"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_rows_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_rows({ parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_rows parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_rows ::Google::Area120::Tables::V1alpha1::ListRowsRequest.new(parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_rows({ parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_rows ::Google::Area120::Tables::V1alpha1::ListRowsRequest.new(parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_rows_client_stub.call_rpc_count
    end
  end

  def test_create_row
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::Row.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    row = {}
    view = :VIEW_UNSPECIFIED

    create_row_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_row, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::CreateRowRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Area120::Tables::V1alpha1::Row), request["row"]
      assert_equal :VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_row_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_row({ parent: parent, row: row, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_row parent: parent, row: row, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_row ::Google::Area120::Tables::V1alpha1::CreateRowRequest.new(parent: parent, row: row, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_row({ parent: parent, row: row, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_row ::Google::Area120::Tables::V1alpha1::CreateRowRequest.new(parent: parent, row: row, view: view), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_row_client_stub.call_rpc_count
    end
  end

  def test_batch_create_rows
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::BatchCreateRowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    requests = [{}]

    batch_create_rows_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_create_rows, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::BatchCreateRowsRequest, request
      assert_equal "hello world", request["parent"]
      assert_kind_of ::Google::Area120::Tables::V1alpha1::CreateRowRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_create_rows_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_create_rows({ parent: parent, requests: requests }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_create_rows parent: parent, requests: requests do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_create_rows ::Google::Area120::Tables::V1alpha1::BatchCreateRowsRequest.new(parent: parent, requests: requests) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_create_rows({ parent: parent, requests: requests }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_create_rows ::Google::Area120::Tables::V1alpha1::BatchCreateRowsRequest.new(parent: parent, requests: requests), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_create_rows_client_stub.call_rpc_count
    end
  end

  def test_update_row
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::Row.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    row = {}
    update_mask = {}
    view = :VIEW_UNSPECIFIED

    update_row_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_row, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::UpdateRowRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Area120::Tables::V1alpha1::Row), request["row"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal :VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_row_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_row({ row: row, update_mask: update_mask, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_row row: row, update_mask: update_mask, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_row ::Google::Area120::Tables::V1alpha1::UpdateRowRequest.new(row: row, update_mask: update_mask, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_row({ row: row, update_mask: update_mask, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_row ::Google::Area120::Tables::V1alpha1::UpdateRowRequest.new(row: row, update_mask: update_mask, view: view), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_row_client_stub.call_rpc_count
    end
  end

  def test_batch_update_rows
    # Create GRPC objects.
    grpc_response = ::Google::Area120::Tables::V1alpha1::BatchUpdateRowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    requests = [{}]

    batch_update_rows_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_update_rows, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::BatchUpdateRowsRequest, request
      assert_equal "hello world", request["parent"]
      assert_kind_of ::Google::Area120::Tables::V1alpha1::UpdateRowRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_update_rows_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_update_rows({ parent: parent, requests: requests }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_update_rows parent: parent, requests: requests do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_update_rows ::Google::Area120::Tables::V1alpha1::BatchUpdateRowsRequest.new(parent: parent, requests: requests) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_update_rows({ parent: parent, requests: requests }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_update_rows ::Google::Area120::Tables::V1alpha1::BatchUpdateRowsRequest.new(parent: parent, requests: requests), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_update_rows_client_stub.call_rpc_count
    end
  end

  def test_delete_row
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_row_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_row, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::DeleteRowRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_row_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_row({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_row name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_row ::Google::Area120::Tables::V1alpha1::DeleteRowRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_row({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_row ::Google::Area120::Tables::V1alpha1::DeleteRowRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_row_client_stub.call_rpc_count
    end
  end

  def test_batch_delete_rows
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    names = ["hello world"]

    batch_delete_rows_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_delete_rows, name
      assert_kind_of ::Google::Area120::Tables::V1alpha1::BatchDeleteRowsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal ["hello world"], request["names"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_delete_rows_client_stub do
      # Create client
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_delete_rows({ parent: parent, names: names }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_delete_rows parent: parent, names: names do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_delete_rows ::Google::Area120::Tables::V1alpha1::BatchDeleteRowsRequest.new(parent: parent, names: names) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_delete_rows({ parent: parent, names: names }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_delete_rows ::Google::Area120::Tables::V1alpha1::BatchDeleteRowsRequest.new(parent: parent, names: names), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_delete_rows_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Area120::Tables::V1alpha1::TablesService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Area120::Tables::V1alpha1::TablesService::Client::Configuration, config
  end
end