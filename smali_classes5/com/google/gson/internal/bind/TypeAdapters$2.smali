.class final Lcom/google/gson/internal/bind/TypeAdapters$2;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$2;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
    .registers 12
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    .line 87
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 88
    return-object v2

    .line 91
    :cond_d
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 92
    .local v0, "bitset":Ljava/util/BitSet;
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "i":I
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    .local v3, "tokenType":Lcom/google/gson/stream/JsonToken;
    const/4 v4, 0x0

    move v5, v4

    .line 95
    :goto_1c
    sget-object v6, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v3, v6, :cond_8e

    .line 97
    sget-object v6, Lcom/google/gson/internal/bind/TypeAdapters$32;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v3}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_78

    const/4 v8, 0x2

    if-eq v6, v8, :cond_73

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5b

    move v2, v5

    .line 105
    .local v2, "set":Z
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "stringValue":Ljava/lang/String;
    :try_start_36
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3a} :catch_43

    if-eqz v6, :cond_3d

    goto :goto_3e

    :cond_3d
    move v7, v4

    :goto_3e
    move v2, v7

    .line 111
    move-object v9, v5

    move v5, v2

    move-object v2, v9

    goto :goto_82

    .line 108
    :catch_43
    move-exception v4

    .line 109
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 97
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "stringValue":Ljava/lang/String;
    .local v2, "stringValue":Ljava/lang/String;
    :cond_5b
    move v4, v5

    .line 114
    .local v4, "set":Z
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid bitset value type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 102
    .end local v2    # "stringValue":Ljava/lang/String;
    .end local v4    # "set":Z
    .local v5, "set":Z
    :cond_73
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v5

    .line 103
    goto :goto_82

    .line 99
    .end local v5    # "set":Z
    :cond_78
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v5

    if-eqz v5, :cond_7f

    goto :goto_80

    :cond_7f
    move v7, v4

    :goto_80
    move v5, v7

    .line 100
    .restart local v5    # "set":Z
    nop

    .line 116
    :goto_82
    if-eqz v5, :cond_87

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 119
    :cond_87
    add-int/lit8 v1, v1, 0x1

    .line 120
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    .line 121
    .end local v5    # "set":Z
    goto :goto_1c

    .line 122
    :cond_8e
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 123
    return-object v0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    move-object v0, p2

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$2;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .registers 7
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "src"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    if-nez p2, :cond_6

    .line 128
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 129
    return-void

    .line 132
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 134
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 135
    .local v1, "value":I
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 133
    .end local v1    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 137
    .end local v0    # "i":I
    :cond_1b
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 138
    return-void
.end method
