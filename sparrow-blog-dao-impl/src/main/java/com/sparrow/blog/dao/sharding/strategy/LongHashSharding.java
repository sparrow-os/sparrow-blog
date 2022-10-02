package com.sparrow.blog.dao.sharding.strategy;

import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;
import org.apache.shardingsphere.shardingjdbc.jdbc.core.datasource.ShardingDataSource;

import java.util.Collection;


public class LongHashSharding implements PreciseShardingAlgorithm<Long> {

    @Override
    public String doSharding(Collection<String> collection, PreciseShardingValue<Long> preciseShardingValue) {
        final long size = collection.size();
        String table = preciseShardingValue.getLogicTableName();
        Long value = preciseShardingValue.getValue();
        final long i = getIndex(size, value);
        StringBuilder builder = new StringBuilder(table).append("_").append(i);
        return builder.toString() ;
    }

    private static long getIndex(long size, Long value) {
        final long hash = hash(value);
        final long i = hash & (size - 1L);
        return i;
    }

    private static final long hash(long hashCode) {
        long h;
        return  (h = hashCode) ^ (h >>> 16);
    }
}
