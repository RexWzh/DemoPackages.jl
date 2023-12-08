using DemoPackages
using Test

@testset "DemoPackages.jl" begin
   @test greet() == "hello world!"
end


@testset "test 1" begin
    @test 1/0 == Inf # 测试正确
    @test_throws DivideError 1 ÷ 0 # 报错测试
    @test 1 == 2 # 测试出错
end