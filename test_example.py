import os
import tftest
import pytest


tfvars = ["./example.tfvars"]


@pytest.fixture(params=tfvars)
def plan(request, directory="./examples", module_name="complete"):
    tfvars_file = request.param
    tf = tftest.TerraformTest(module_name, directory)
    tf.setup()
    plan = tf.plan(
        output=True, use_cache=True, tf_var_file=tfvars_file
    ) 
    return plan

def test_variables(plan):
    tf_vars = plan.variables
    assert "region" in tf_vars
    assert "vpc_cidr" in tf_vars
    assert "project" in tf_vars
    assert "availability_zones" in tf_vars
    assert "private_cidr" in tf_vars
    assert "public_cidr" in tf_vars

def test_outputs(plan):
    assert "private" in plan.outputs
    assert "public" in plan.outputs
    assert "vpc_id" in plan.outputs
    assert "security_group_id" in plan.outputs
