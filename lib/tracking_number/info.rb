module TrackingNumber
  class Info < OpenStruct
    def initialize(info_hash = {})
      @default = info_hash.values.first if info_hash.size == 1
      super
    end

    def to_s
      @default || @name
    end
  end
end
