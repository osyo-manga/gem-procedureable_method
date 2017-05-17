require "procedureable_method/version"

module ProcedureableMethod
	module Impl
		def === *args, &block
			to_proc.=== *args, &block
		end
	end

	refine Method do
		include Impl
	end
end
