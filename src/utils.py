import io

def convert_to_parquet(df):
    parquet_buffer = io.BytesIO()
    df.to_parquet(parquet_buffer, engine='pyarrow', compression='snappy', index=False)
    parquet_buffer.seek(0)
    return parquet_buffer