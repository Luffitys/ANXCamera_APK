.class final Lcom/android/framework/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Lcom/android/framework/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INTS_PER_FIELD:I = 0x3

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field static final ONEOF_TYPE_OFFSET:I = 0x33

.field private static final REQUIRED_MASK:I = 0x10000000

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final buffer:[I

.field private final checkInitializedCount:I

.field private final defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final intArray:[I

.field private final listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

.field private final lite:Z

.field private final mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

.field private final maxFieldNumber:I

.field private final minFieldNumber:I

.field private final newInstanceSchema:Lcom/android/framework/protobuf/NewInstanceSchema;

.field private final objects:[Ljava/lang/Object;

.field private final proto3:Z

.field private final repeatedFieldOffsetStart:I

.field private final unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/android/framework/protobuf/MessageLite;ZZ[IIILcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/android/framework/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    move/from16 v5, p3

    iput v5, v0, Lcom/android/framework/protobuf/MessageSchema;->minFieldNumber:I

    move/from16 v6, p4

    iput v6, v0, Lcom/android/framework/protobuf/MessageSchema;->maxFieldNumber:I

    instance-of v7, v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-boolean v7, v0, Lcom/android/framework/protobuf/MessageSchema;->lite:Z

    move/from16 v7, p6

    iput-boolean v7, v0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v2, :cond_2b

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->hasExtensions(Lcom/android/framework/protobuf/MessageLite;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v8, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    :goto_2c
    iput-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    move/from16 v8, p7

    iput-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    move/from16 v10, p9

    iput v10, v0, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    move/from16 v11, p10

    iput v11, v0, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/android/framework/protobuf/MessageSchema;->newInstanceSchema:Lcom/android/framework/protobuf/NewInstanceSchema;

    move-object/from16 v13, p12

    iput-object v13, v0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    move-object/from16 v14, p13

    iput-object v14, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    iput-object v2, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    iput-object v1, v0, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    return-void
.end method

.method private arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static booleanAt(Ljava/lang/Object;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private decodeMapEntry([BIILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v0, p2

    invoke-static {v7, v0, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v11, v10, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v11, :cond_bc

    sub-int v1, v8, v0

    if-gt v11, v1, :cond_bc

    add-int v12, v0, v11

    iget-object v1, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v2, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v13, v1

    move-object v14, v2

    :goto_1e
    if-ge v0, v12, :cond_ab

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v7, v0

    if-gez v0, :cond_2f

    invoke-static {v0, v7, v1, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v0, v10, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move v15, v0

    move v6, v1

    goto :goto_31

    :cond_2f
    move v15, v0

    move v6, v1

    :goto_31
    ushr-int/lit8 v5, v15, 0x3

    and-int/lit8 v4, v15, 0x7

    const/4 v0, 0x1

    if-eq v5, v0, :cond_7b

    const/4 v0, 0x2

    if-eq v5, v0, :cond_44

    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 p2, v11

    move v11, v4

    goto/16 :goto_a1

    :cond_44
    iget-object v0, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v4, v0, :cond_73

    iget-object v3, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v0, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move-object/from16 v17, v3

    move/from16 v3, p3

    move/from16 p2, v11

    move v11, v4

    move-object/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v14, v10, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    move/from16 v11, p2

    goto :goto_1e

    :cond_73
    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 p2, v11

    move v11, v4

    goto :goto_a1

    :cond_7b
    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 p2, v11

    move v11, v4

    iget-object v0, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v11, v0, :cond_a1

    iget-object v4, v9, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v13, v10, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    move/from16 v11, p2

    goto/16 :goto_1e

    :cond_a1
    :goto_a1
    move/from16 v1, v16

    invoke-static {v15, v7, v1, v8, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v11, p2

    goto/16 :goto_1e

    :cond_ab
    move/from16 p2, v11

    if-ne v0, v12, :cond_b5

    move-object/from16 v1, p5

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v12

    :cond_b5
    move-object/from16 v1, p5

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :cond_bc
    move-object/from16 v1, p5

    move/from16 p2, v11

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private decodeMapEntryValue([BIILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto/16 :goto_b4

    :pswitch_1a
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_b4

    :pswitch_2c
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto/16 :goto_b4

    :pswitch_3e
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_b4

    :pswitch_4b
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_b4

    :pswitch_58
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_b4

    :pswitch_65
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x4

    goto :goto_b4

    :pswitch_72
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x8

    goto :goto_b4

    :pswitch_7f
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x4

    goto :goto_b4

    :pswitch_8c
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x8

    goto :goto_b4

    :pswitch_99
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_b4

    :pswitch_9e
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    iget-wide v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ac

    const/4 v0, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v0, 0x0

    :goto_ad
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    nop

    :goto_b4
    return p2

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_99
        :pswitch_8c
        :pswitch_7f
        :pswitch_7f
        :pswitch_72
        :pswitch_72
        :pswitch_65
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_4b
        :pswitch_4b
        :pswitch_3e
        :pswitch_2c
        :pswitch_1a
        :pswitch_14
    .end packed-switch
.end method

.method private static doubleAt(Ljava/lang/Object;J)D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_1da

    return v5

    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v4, v5

    goto :goto_29

    :cond_28
    nop

    :goto_29
    return v4

    :pswitch_2a
    nop

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    :pswitch_38
    nop

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    :pswitch_46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    move v4, v5

    goto :goto_5d

    :cond_5c
    nop

    :goto_5d
    return v4

    :pswitch_5e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_72

    move v4, v5

    goto :goto_73

    :cond_72
    nop

    :goto_73
    return v4

    :pswitch_74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_86

    move v4, v5

    goto :goto_87

    :cond_86
    nop

    :goto_87
    return v4

    :pswitch_88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_9c

    move v4, v5

    goto :goto_9d

    :cond_9c
    nop

    :goto_9d
    return v4

    :pswitch_9e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_b0

    move v4, v5

    goto :goto_b1

    :cond_b0
    nop

    :goto_b1
    return v4

    :pswitch_b2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_c4

    move v4, v5

    goto :goto_c5

    :cond_c4
    nop

    :goto_c5
    return v4

    :pswitch_c6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_d8

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_d8

    move v4, v5

    goto :goto_d9

    :cond_d8
    nop

    :goto_d9
    return v4

    :pswitch_da
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_f0

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    move v4, v5

    goto :goto_f1

    :cond_f0
    nop

    :goto_f1
    return v4

    :pswitch_f2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    move v4, v5

    goto :goto_109

    :cond_108
    nop

    :goto_109
    return v4

    :pswitch_10a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_120

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    move v4, v5

    goto :goto_121

    :cond_120
    nop

    :goto_121
    return v4

    :pswitch_122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_134

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    if-ne v3, v6, :cond_134

    move v4, v5

    goto :goto_135

    :cond_134
    nop

    :goto_135
    return v4

    :pswitch_136
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_148

    move v4, v5

    goto :goto_149

    :cond_148
    nop

    :goto_149
    return v4

    :pswitch_14a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_15e

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_15e

    move v4, v5

    goto :goto_15f

    :cond_15e
    nop

    :goto_15f
    return v4

    :pswitch_160
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_172

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_172

    move v4, v5

    goto :goto_173

    :cond_172
    nop

    :goto_173
    return v4

    :pswitch_174
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_188

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_188

    move v4, v5

    goto :goto_189

    :cond_188
    nop

    :goto_189
    return v4

    :pswitch_18a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_19e

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_19e

    move v4, v5

    goto :goto_19f

    :cond_19e
    nop

    :goto_19f
    return v4

    :pswitch_1a0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1ba

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-ne v3, v6, :cond_1ba

    move v4, v5

    goto :goto_1bb

    :cond_1ba
    nop

    :goto_1bb
    return v4

    :pswitch_1bc
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1d8

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_1d8

    move v4, v5

    goto :goto_1d9

    :cond_1d8
    nop

    :goto_1d9
    return v4

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_1bc
        :pswitch_1a0
        :pswitch_18a
        :pswitch_174
        :pswitch_160
        :pswitch_14a
        :pswitch_136
        :pswitch_122
        :pswitch_10a
        :pswitch_f2
        :pswitch_da
        :pswitch_c6
        :pswitch_b2
        :pswitch_9e
        :pswitch_88
        :pswitch_74
        :pswitch_5e
        :pswitch_46
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_2a
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private final filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct {v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    invoke-direct {v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    move-object/from16 v12, p1

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_19

    return-object p3

    :cond_19
    invoke-direct {v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v14

    if-nez v14, :cond_20

    return-object p3

    :cond_20
    iget-object v0, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v0, v13}, Lcom/android/framework/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v15

    nop

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v9

    move-object v3, v15

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->filterUnknownEnumMap(IILjava/util/Map;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final filterUnknownEnumMap(IILjava/util/Map;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p4, v3}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-nez v3, :cond_67

    if-nez p5, :cond_34

    invoke-virtual {p6}, Lcom/android/framework/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p5

    :cond_34
    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/ByteString;->newCodedBuilder(I)Lcom/android/framework/protobuf/ByteString$CodedBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v5

    :try_start_49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_54} :catch_60

    nop

    invoke-virtual {v4}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->build()Lcom/android/framework/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {p6, p5, p2, v6}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_67

    :catch_60
    move-exception v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_67
    :goto_67
    goto :goto_12

    :cond_68
    return-object p5
.end method

.method private static floatAt(Ljava/lang/Object;J)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/framework/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method private getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;
    .registers 7

    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/framework/protobuf/Schema;

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method static getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-object v0, v1, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    :cond_14
    return-object v0
.end method

.method private getSerializedSizeProto2(Ljava/lang/Object;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    iget-object v7, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    if-ge v6, v7, :cond_664

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v8

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x11

    const v13, 0xfffff

    const/4 v14, 0x1

    if-gt v9, v12, :cond_3a

    iget-object v12, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v15, v6, 0x2

    aget v10, v12, v15

    and-int v12, v10, v13

    ushr-int/lit8 v13, v10, 0x14

    shl-int v11, v14, v13

    if-eq v12, v4, :cond_39

    move v4, v12

    int-to-long v14, v12

    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :cond_39
    goto :goto_56

    :cond_3a
    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_39

    sget-object v12, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v12}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v12

    if-lt v9, v12, :cond_56

    sget-object v12, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v12}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v12

    if-gt v9, v12, :cond_56

    iget-object v12, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v6, 0x2

    aget v12, v12, v14

    and-int v10, v12, v13

    :cond_56
    :goto_56
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    const/4 v14, 0x0

    packed-switch v9, :pswitch_data_67c

    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_62
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_7c

    nop

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/framework/protobuf/MessageLite;

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v15

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_7c
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_80
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_93

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_93
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_97
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_aa

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_aa
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_ae
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_bf

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_bf
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_c3
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_d2

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_d2
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_d6
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_e9

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_e9
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_ed
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_100

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_100
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_104
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11a

    nop

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_11a
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_11e
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_135

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v15

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v15

    add-int/2addr v2, v15

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_135
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_139
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_15c

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Lcom/android/framework/protobuf/ByteString;

    if-eqz v15, :cond_150

    move-object v15, v14

    check-cast v15, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v8, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v15

    add-int/2addr v2, v15

    goto :goto_158

    :cond_150
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    invoke-static {v8, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v2, v15

    :goto_158
    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_15c
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_160
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_170

    const/4 v14, 0x1

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_170
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_174
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_183

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_183
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_187
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_198

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_198
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_19c
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1af

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_1af
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_1b3
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1c6

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_1c6
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_1ca
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1dd

    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_1dd
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_1e1
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_1f1

    const/4 v14, 0x0

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_1f1
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_1f5
    invoke-direct {v0, v1, v8, v6}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_206

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_65e

    :cond_206
    move/from16 v16, v4

    goto/16 :goto_65e

    :pswitch_20a
    iget-object v14, v0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v4

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v8, v15, v4}, Lcom/android/framework/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_21d
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_230
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_246

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_246
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_254
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_26a

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_26a
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_278
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_28e

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_28e
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_29c
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2b2

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2b2
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_2c0
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2d6

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2d6
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_2e4
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_2fa

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2fa
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_308
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_31e

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_31e
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_32c
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_342

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_342
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_350
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_366

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_366
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_374
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_38a

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_38a
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_398
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3ae

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3ae
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_3bc
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3d2

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3d2
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_3e0
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_3f6

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3f6
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_404
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_65e

    iget-boolean v14, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_41a

    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_41a
    nop

    invoke-static {v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_428
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_437
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_446
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_455
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_464
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_473
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_482
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_491
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4a4
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4b3
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4c2
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4d1
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4e0
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4ef
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_4fe
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_50d
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_51c
    move/from16 v16, v4

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_52b
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    nop

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/MessageLite;

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_543
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_554
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_565
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_574
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_581
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_592
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_5a3
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_5b6
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    goto/16 :goto_65e

    :pswitch_5cb
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v14, v4, Lcom/android/framework/protobuf/ByteString;

    if-eqz v14, :cond_5e2

    move-object v14, v4

    check-cast v14, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    goto :goto_5ea

    :cond_5e2
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v14

    add-int/2addr v2, v14

    :goto_5ea
    goto/16 :goto_65e

    :pswitch_5ec
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const/4 v4, 0x1

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_65e

    :pswitch_5fa
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-static {v8, v14}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_606
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_614
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_624
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_634
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_644
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const/4 v4, 0x0

    invoke-static {v8, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_65e

    :pswitch_651
    move/from16 v16, v4

    and-int v4, v5, v11

    if-eqz v4, :cond_65e

    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    :cond_65e
    :goto_65e
    add-int/lit8 v6, v6, 0x3

    move/from16 v4, v16

    goto/16 :goto_a

    :cond_664
    iget-object v6, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v6, v1}, Lcom/android/framework/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v2, v6

    iget-boolean v6, v0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v6, :cond_67a

    iget-object v6, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/framework/protobuf/FieldSet;->getSerializedSize()I

    move-result v6

    add-int/2addr v2, v6

    :cond_67a
    return v2

    nop

    :pswitch_data_67c
    .packed-switch 0x0
        :pswitch_651
        :pswitch_644
        :pswitch_634
        :pswitch_624
        :pswitch_614
        :pswitch_606
        :pswitch_5fa
        :pswitch_5ec
        :pswitch_5cb
        :pswitch_5b6
        :pswitch_5a3
        :pswitch_592
        :pswitch_581
        :pswitch_574
        :pswitch_565
        :pswitch_554
        :pswitch_543
        :pswitch_52b
        :pswitch_51c
        :pswitch_50d
        :pswitch_4fe
        :pswitch_4ef
        :pswitch_4e0
        :pswitch_4d1
        :pswitch_4c2
        :pswitch_4b3
        :pswitch_4a4
        :pswitch_491
        :pswitch_482
        :pswitch_473
        :pswitch_464
        :pswitch_455
        :pswitch_446
        :pswitch_437
        :pswitch_428
        :pswitch_404
        :pswitch_3e0
        :pswitch_3bc
        :pswitch_398
        :pswitch_374
        :pswitch_350
        :pswitch_32c
        :pswitch_308
        :pswitch_2e4
        :pswitch_2c0
        :pswitch_29c
        :pswitch_278
        :pswitch_254
        :pswitch_230
        :pswitch_21d
        :pswitch_20a
        :pswitch_1f5
        :pswitch_1e1
        :pswitch_1ca
        :pswitch_1b3
        :pswitch_19c
        :pswitch_187
        :pswitch_174
        :pswitch_160
        :pswitch_139
        :pswitch_11e
        :pswitch_104
        :pswitch_ed
        :pswitch_d6
        :pswitch_c3
        :pswitch_ae
        :pswitch_97
        :pswitch_80
        :pswitch_62
    .end packed-switch
.end method

.method private getSerializedSizeProto3(Ljava/lang/Object;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    iget-object v5, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v5, v5

    if-ge v4, v5, :cond_57f

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v6

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    sget-object v10, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v10

    const/4 v11, 0x0

    if-lt v6, v10, :cond_39

    sget-object v10, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v10

    if-gt v6, v10, :cond_39

    iget-object v10, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v12, v4, 0x2

    aget v10, v10, v12

    const v12, 0xfffff

    and-int/2addr v10, v12

    goto :goto_3a

    :cond_39
    move v10, v11

    :goto_3a
    nop

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    packed-switch v6, :pswitch_data_588

    goto/16 :goto_57b

    :pswitch_44
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/framework/protobuf/MessageLite;

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_5c
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_6d
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_7e
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_8b
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_57b

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_98
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_a9
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_ba
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_ce
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_e3
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/android/framework/protobuf/ByteString;

    if-eqz v12, :cond_fa

    move-object v12, v11

    check-cast v12, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_102

    :cond_fa
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    :goto_102
    goto/16 :goto_57b

    :pswitch_104
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_111
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_57b

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_11e
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_12b
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_13c
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_14d
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_15e
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v13}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_16b
    invoke-direct {v0, v1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_57b

    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_17a
    iget-object v11, v0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v7, v12, v13}, Lcom/android/framework/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_18b
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_19b
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1b0

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b0
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_1be
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1d3

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d3
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_1e1
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_1f6

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f6
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_204
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_219

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_219
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_227
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_23c

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_23c
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_24a
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_25f

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_25f
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_26d
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_282

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_282
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_290
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2a5

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2a5
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_2b3
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2c8

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2c8
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_2d6
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2eb

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2eb
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_2f9
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_30e

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_30e
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_31c
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_331

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_331
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_33f
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_354

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_354
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_362
    nop

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_57b

    iget-boolean v12, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_377

    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_377
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_385
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_391
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_39d
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3a8
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3b3
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3bf
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3cb
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3d7
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3e7
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3f2
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_3fd
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_408
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_413
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_41f
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_42b
    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_437
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_442
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_44d
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/framework/protobuf/MessageLite;

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_465
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_477
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_488
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_495
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_57b

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_4a2
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_4b3
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_57b

    :pswitch_4c4
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_4d7
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    goto/16 :goto_57b

    :pswitch_4ec
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/android/framework/protobuf/ByteString;

    if-eqz v12, :cond_503

    move-object v12, v11

    check-cast v12, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_50b

    :cond_503
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    :goto_50b
    goto/16 :goto_57b

    :pswitch_50d
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_519
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_57b

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_525
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_531
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_541
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    nop

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_552
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_562
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    invoke-static {v7, v13}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_57b

    :pswitch_56e
    invoke-direct {v0, v1, v4}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_57b

    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    :cond_57b
    :goto_57b
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_8

    :cond_57f
    iget-object v4, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    return v3

    nop

    :pswitch_data_588
    .packed-switch 0x0
        :pswitch_56e
        :pswitch_562
        :pswitch_552
        :pswitch_541
        :pswitch_531
        :pswitch_525
        :pswitch_519
        :pswitch_50d
        :pswitch_4ec
        :pswitch_4d7
        :pswitch_4c4
        :pswitch_4b3
        :pswitch_4a2
        :pswitch_495
        :pswitch_488
        :pswitch_477
        :pswitch_465
        :pswitch_44d
        :pswitch_442
        :pswitch_437
        :pswitch_42b
        :pswitch_41f
        :pswitch_413
        :pswitch_408
        :pswitch_3fd
        :pswitch_3f2
        :pswitch_3e7
        :pswitch_3d7
        :pswitch_3cb
        :pswitch_3bf
        :pswitch_3b3
        :pswitch_3a8
        :pswitch_39d
        :pswitch_391
        :pswitch_385
        :pswitch_362
        :pswitch_33f
        :pswitch_31c
        :pswitch_2f9
        :pswitch_2d6
        :pswitch_2b3
        :pswitch_290
        :pswitch_26d
        :pswitch_24a
        :pswitch_227
        :pswitch_204
        :pswitch_1e1
        :pswitch_1be
        :pswitch_19b
        :pswitch_18b
        :pswitch_17a
        :pswitch_16b
        :pswitch_15e
        :pswitch_14d
        :pswitch_13c
        :pswitch_12b
        :pswitch_11e
        :pswitch_111
        :pswitch_104
        :pswitch_e3
        :pswitch_ce
        :pswitch_ba
        :pswitch_a9
        :pswitch_98
        :pswitch_8b
        :pswitch_7e
        :pswitch_6d
        :pswitch_5c
        :pswitch_44
    .end packed-switch
.end method

.method private getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private static intAt(Ljava/lang/Object;J)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static isEnforceUtf8(I)Z
    .registers 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isFieldPresent(Ljava/lang/Object;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_da

    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v5

    const-wide/16 v6, 0x0

    packed-switch v5, :pswitch_data_f0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_1d
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_24

    move v1, v2

    :cond_24
    return v1

    :pswitch_25
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_2e

    move v1, v2

    :cond_2e
    return v1

    :pswitch_2f
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_36

    move v1, v2

    :cond_36
    return v1

    :pswitch_37
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_40

    move v1, v2

    :cond_40
    return v1

    :pswitch_41
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_48

    move v1, v2

    :cond_48
    return v1

    :pswitch_49
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_50

    move v1, v2

    :cond_50
    return v1

    :pswitch_51
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_58

    move v1, v2

    :cond_58
    return v1

    :pswitch_59
    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    :pswitch_65
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6c

    move v1, v2

    :cond_6c
    return v1

    :pswitch_6d
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_7e

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    :cond_7e
    instance-of v5, v1, Lcom/android/framework/protobuf/ByteString;

    if-eqz v5, :cond_8a

    sget-object v5, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v5, v1}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v2, v5

    return v2

    :cond_8a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :pswitch_90
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v1

    return v1

    :pswitch_95
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_9c

    move v1, v2

    :cond_9c
    return v1

    :pswitch_9d
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_a6

    move v1, v2

    :cond_a6
    return v1

    :pswitch_a7
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-eqz v5, :cond_ae

    move v1, v2

    :cond_ae
    return v1

    :pswitch_af
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_b8

    move v1, v2

    :cond_b8
    return v1

    :pswitch_b9
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_c2

    move v1, v2

    :cond_c2
    return v1

    :pswitch_c3
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_cd

    move v1, v2

    :cond_cd
    return v1

    :pswitch_ce
    invoke-static {p1, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_d9

    move v1, v2

    :cond_d9
    return v1

    :cond_da
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    ushr-int/lit8 v3, v0, 0x14

    shl-int v3, v2, v3

    const v4, 0xfffff

    and-int/2addr v4, v0

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_ef

    move v1, v2

    :cond_ef
    return v1

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_c3
        :pswitch_b9
        :pswitch_af
        :pswitch_a7
        :pswitch_9d
        :pswitch_95
        :pswitch_90
        :pswitch_6d
        :pswitch_65
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_37
        :pswitch_2f
        :pswitch_25
        :pswitch_1d
    .end packed-switch
.end method

.method private isFieldPresent(Ljava/lang/Object;III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    :cond_9
    and-int v0, p3, p4

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isInitialized(Ljava/lang/Object;ILcom/android/framework/protobuf/Schema;)Z
    .registers 5

    invoke-static {p1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isListInitialized(Ljava/lang/Object;II)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    const/4 v3, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    const/4 v2, 0x0

    return v2

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2c
    return v2
.end method

.method private isMapInitialized(Ljava/lang/Object;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    return v2

    :cond_16
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v3, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v3

    iget-object v4, v3, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-eq v4, v5, :cond_2b

    return v2

    :cond_2b
    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_4c

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    :cond_4c
    invoke-interface {v4, v6}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    const/4 v2, 0x0

    return v2

    :cond_54
    goto :goto_34

    :cond_55
    return v2
.end method

.method private isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    and-int/2addr v1, v0

    int-to-long v3, v1

    invoke-static {p2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v2, v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method private isOneofPresent(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v1, p2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private static isRequired(I)Z
    .registers 2

    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static listAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static longAt(Ljava/lang/Object;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v13, v1

    move-object v14, v2

    :goto_e
    :try_start_e
    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v1

    move v15, v1

    invoke-direct {v8, v15}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_6f6

    move v7, v1

    if-gez v7, :cond_a8

    const v1, 0x7fffffff

    if-ne v15, v1, :cond_36

    iget v1, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_21
    iget v2, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_30

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    invoke-direct {v8, v10, v2, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_30
    if-eqz v13, :cond_35

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    return-void

    :cond_36
    :try_start_36
    iget-boolean v1, v8, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v1, :cond_3e

    const/4 v1, 0x0

    move-object/from16 v6, p2

    goto :goto_46

    :cond_3e
    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    move-object/from16 v6, p2

    invoke-virtual {v6, v12, v1, v15}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_6f6

    :goto_46
    move-object/from16 v16, v1

    if-eqz v16, :cond_6e

    if-nez v14, :cond_56

    :try_start_4c
    invoke-virtual/range {p2 .. p3}, Lcom/android/framework/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_52

    move-object v14, v1

    goto :goto_56

    :catchall_52
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6fa

    :cond_56
    :goto_56
    nop

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v17, v14

    move v14, v7

    move-object/from16 v7, p1

    :try_start_66
    invoke-virtual/range {v1 .. v7}, Lcom/android/framework/protobuf/ExtensionSchema;->parseExtension(Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    move-object/from16 v14, v17

    goto :goto_e

    :cond_6e
    move-object/from16 v17, v14

    move v14, v7

    invoke-virtual {v9, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result v1

    if-eqz v1, :cond_91

    move-object/from16 v14, v17

    goto :goto_e

    :cond_80
    if-nez v13, :cond_87

    invoke-virtual {v9, v10}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    :cond_87
    invoke-virtual {v9, v13, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z

    move-result v1
    :try_end_8b
    .catchall {:try_start_66 .. :try_end_8b} :catchall_6f1

    if-eqz v1, :cond_91

    move-object/from16 v14, v17

    goto/16 :goto_e

    :cond_91
    iget v1, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_93
    iget v2, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_a2

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    invoke-direct {v8, v10, v2, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_a2
    if-eqz v13, :cond_a7

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a7
    return-void

    :cond_a8
    move-object/from16 v17, v14

    move v14, v7

    :try_start_ab
    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_6f1

    move v7, v1

    :try_start_b0
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v1
    :try_end_b4
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b0 .. :try_end_b4} :catch_6a3
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_6f1

    packed-switch v1, :pswitch_data_712

    move v1, v7

    if-nez v13, :cond_685

    :try_start_ba
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v2
    :try_end_be
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_ba .. :try_end_be} :catch_681
    .catchall {:try_start_ba .. :try_end_be} :catchall_6f1

    goto/16 :goto_684

    :pswitch_c0
    nop

    :try_start_c1
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/android/framework/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_d6
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_ec
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_102
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_118
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_12e
    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readEnum()I

    move-result v1

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v2

    if-eqz v2, :cond_148

    invoke-interface {v2, v1}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_13f

    goto :goto_148

    :cond_13f
    nop

    invoke-static {v15, v1, v13, v9}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    move v1, v7

    goto/16 :goto_6a2

    :cond_148
    :goto_148
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_159
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_16f
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_180
    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1a3

    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/android/framework/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1b6

    :cond_1a3
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/android/framework/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    :goto_1b6
    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_1bc
    invoke-direct {v8, v10, v7, v11}, Lcom/android/framework/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_1c5
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_1db
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_1f1
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_207
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_21d
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readUInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_233
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_249
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_25f
    nop

    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v15, v14}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_6a2

    :pswitch_275
    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v14

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/Reader;)V
    :try_end_285
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c1 .. :try_end_285} :catch_288
    .catchall {:try_start_c1 .. :try_end_285} :catchall_6f1

    move v1, v7

    goto/16 :goto_6a2

    :catch_288
    move-exception v0

    move-object v2, v0

    move v1, v7

    goto/16 :goto_6a6

    :pswitch_28d
    nop

    :try_start_28e
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6
    :try_end_296
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_28e .. :try_end_296} :catch_2a7
    .catchall {:try_start_28e .. :try_end_296} :catchall_6f1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v16, v7

    move-object/from16 v7, p5

    :try_start_2a0
    invoke-direct/range {v1 .. v7}, Lcom/android/framework/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :catch_2a7
    move-exception v0

    move-object v2, v0

    move v1, v7

    goto/16 :goto_6a6

    :pswitch_2ac
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_2bf
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_2d2
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_2e5
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_2f8
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    nop

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v2

    invoke-static {v15, v1, v2, v13, v9}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_315
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_328
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_33b
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_34e
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_361
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_374
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_387
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_39a
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3ad
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3c0
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3d3
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3e6
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_3f9
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_40c
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    nop

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v2

    invoke-static {v15, v1, v2, v13, v9}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_429
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_43c
    move/from16 v16, v7

    iget-object v1, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static/range {v16 .. v16}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/android/framework/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    move/from16 v1, v16

    goto/16 :goto_6a2

    :pswitch_44f
    move/from16 v16, v7

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, v16

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    :try_end_462
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2a0 .. :try_end_462} :catch_466
    .catchall {:try_start_2a0 .. :try_end_462} :catchall_6f1

    move/from16 v1, v16

    goto/16 :goto_6a2

    :catch_466
    move-exception v0

    move-object v2, v0

    move/from16 v1, v16

    goto/16 :goto_6a6

    :pswitch_46c
    move/from16 v16, v7

    move/from16 v1, v16

    :try_start_470
    invoke-direct {v8, v10, v1, v11}, Lcom/android/framework/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V

    goto/16 :goto_6a2

    :pswitch_475
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_485
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_495
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4a5
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4b5
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4c5
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4d5
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4e5
    move v1, v7

    iget-object v2, v8, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/android/framework/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_6a2

    :pswitch_4f5
    move v1, v7

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_51a

    nop

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/android/framework/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6a2

    :cond_51a
    nop

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    invoke-interface {v11, v4, v12}, Lcom/android/framework/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_52f
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_540
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_551
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_562
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_573
    move v1, v7

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readEnum()I

    move-result v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v3

    if-eqz v3, :cond_58d

    invoke-interface {v3, v2}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_585

    goto :goto_58d

    :cond_585
    nop

    invoke-static {v15, v2, v13, v9}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    goto/16 :goto_6a2

    :cond_58d
    :goto_58d
    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_599
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_5aa
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_5bb
    move v1, v7

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_5e0

    nop

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/android/framework/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6a2

    :cond_5e0
    nop

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-direct {v8, v14}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    invoke-interface {v11, v4, v12}, Lcom/android/framework/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_5f5
    move v1, v7

    invoke-direct {v8, v10, v1, v11}, Lcom/android/framework/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_5fe
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_60f
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_620
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6a2

    :pswitch_631
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :pswitch_641
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readUInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :pswitch_651
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :pswitch_661
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :pswitch_671
    move v1, v7

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    invoke-direct {v8, v10, v14}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_6a2

    :catch_681
    move-exception v0

    move-object v2, v0

    goto :goto_6a6

    :goto_684
    move-object v13, v2

    :cond_685
    invoke-virtual {v9, v13, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z

    move-result v2
    :try_end_689
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_470 .. :try_end_689} :catch_681
    .catchall {:try_start_470 .. :try_end_689} :catchall_6f1

    if-nez v2, :cond_6a2

    iget v2, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_68d
    iget v3, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_69c

    iget-object v3, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    invoke-direct {v8, v10, v3, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_68d

    :cond_69c
    if-eqz v13, :cond_6a1

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6a1
    return-void

    :cond_6a2
    :goto_6a2
    goto :goto_6ed

    :catch_6a3
    move-exception v0

    move v1, v7

    move-object v2, v0

    :goto_6a6
    :try_start_6a6
    invoke-virtual {v9, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z

    move-result v3

    if-eqz v3, :cond_6c9

    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result v3
    :try_end_6b0
    .catchall {:try_start_6a6 .. :try_end_6b0} :catchall_6f1

    if-nez v3, :cond_6ed

    iget v3, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_6b4
    iget v4, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_6c3

    iget-object v4, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    invoke-direct {v8, v10, v4, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_6b4

    :cond_6c3
    if-eqz v13, :cond_6c8

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6c8
    return-void

    :cond_6c9
    if-nez v13, :cond_6d0

    :try_start_6cb
    invoke-virtual {v9, v10}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    :cond_6d0
    invoke-virtual {v9, v13, v11}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)Z

    move-result v3
    :try_end_6d4
    .catchall {:try_start_6cb .. :try_end_6d4} :catchall_6f1

    if-nez v3, :cond_6ed

    iget v3, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_6d8
    iget v4, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_6e7

    iget-object v4, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    invoke-direct {v8, v10, v4, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_6d8

    :cond_6e7
    if-eqz v13, :cond_6ec

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6ec
    return-void

    :cond_6ed
    :goto_6ed
    move-object/from16 v14, v17

    goto/16 :goto_e

    :catchall_6f1
    move-exception v0

    move-object v1, v0

    move-object/from16 v14, v17

    goto :goto_6fa

    :catchall_6f6
    move-exception v0

    move-object/from16 v17, v14

    move-object v1, v0

    :goto_6fa
    iget v2, v8, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_6fc
    iget v3, v8, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_70b

    iget-object v3, v8, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    invoke-direct {v8, v10, v3, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_6fc

    :cond_70b
    if-eqz v13, :cond_710

    invoke-virtual {v9, v10, v13}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_710
    throw v1

    nop

    :pswitch_data_712
    .packed-switch 0x0
        :pswitch_671
        :pswitch_661
        :pswitch_651
        :pswitch_641
        :pswitch_631
        :pswitch_620
        :pswitch_60f
        :pswitch_5fe
        :pswitch_5f5
        :pswitch_5bb
        :pswitch_5aa
        :pswitch_599
        :pswitch_573
        :pswitch_562
        :pswitch_551
        :pswitch_540
        :pswitch_52f
        :pswitch_4f5
        :pswitch_4e5
        :pswitch_4d5
        :pswitch_4c5
        :pswitch_4b5
        :pswitch_4a5
        :pswitch_495
        :pswitch_485
        :pswitch_475
        :pswitch_46c
        :pswitch_44f
        :pswitch_43c
        :pswitch_429
        :pswitch_40c
        :pswitch_3f9
        :pswitch_3e6
        :pswitch_3d3
        :pswitch_3c0
        :pswitch_3ad
        :pswitch_39a
        :pswitch_387
        :pswitch_374
        :pswitch_361
        :pswitch_34e
        :pswitch_33b
        :pswitch_328
        :pswitch_315
        :pswitch_2f8
        :pswitch_2e5
        :pswitch_2d2
        :pswitch_2bf
        :pswitch_2ac
        :pswitch_28d
        :pswitch_275
        :pswitch_25f
        :pswitch_249
        :pswitch_233
        :pswitch_21d
        :pswitch_207
        :pswitch_1f1
        :pswitch_1db
        :pswitch_1c5
        :pswitch_1bc
        :pswitch_180
        :pswitch_16f
        :pswitch_159
        :pswitch_12e
        :pswitch_118
        :pswitch_102
        :pswitch_ec
        :pswitch_d6
        :pswitch_c0
    .end packed-switch
.end method

.method private final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/Reader;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v3, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2f

    :cond_18
    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v3, v2}, Lcom/android/framework/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object v3, v2

    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v4, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v4, v2, v3}, Lcom/android/framework/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2f
    :goto_2f
    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v3, v2}, Lcom/android/framework/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v4, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    invoke-interface {p5, v3, v4, p4}, Lcom/android/framework/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_f

    return-void

    :cond_f
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_26

    if-eqz v4, :cond_26

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v1, v2, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_2f

    :cond_26
    if-eqz v4, :cond_2f

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_30

    :cond_2f
    :goto_2f
    nop

    :goto_30
    return-void
.end method

.method private mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-direct {p0, p2, v1, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_13

    return-void

    :cond_13
    invoke-static {p1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v4, :cond_2a

    if-eqz v5, :cond_2a

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_33

    :cond_2a
    if-eqz v5, :cond_33

    invoke-static {p1, v2, v3, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_34

    :cond_33
    :goto_33
    nop

    :goto_34
    return-void
.end method

.method private mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_174

    goto/16 :goto_173

    :pswitch_15
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_1a
    invoke-direct {p0, p2, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    :pswitch_2c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_31
    invoke-direct {p0, p2, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    :pswitch_43
    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-static {v4, p1, p2, v1, v2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeMap(Lcom/android/framework/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_173

    :pswitch_4a
    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-virtual {v4, p1, p2, v1, v2}, Lcom/android/framework/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_173

    :pswitch_51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_56
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_68
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_7a
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_8c
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_9e
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_b0
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_c2
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_d4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_d9
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_eb
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    :pswitch_fd
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_10e
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_11f
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_130
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_141
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_152
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    :pswitch_163
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_173

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    :cond_173
    :goto_173
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_163
        :pswitch_152
        :pswitch_141
        :pswitch_130
        :pswitch_11f
        :pswitch_10e
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_d4
        :pswitch_c2
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7a
        :pswitch_68
        :pswitch_56
        :pswitch_51
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_43
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method static newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/MessageInfo;",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")",
            "Lcom/android/framework/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/RawMessageInfo;

    if-eqz v0, :cond_11

    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/RawMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchemaForRawMessageInfo(Lcom/android/framework/protobuf/RawMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object v0

    return-object v0

    :cond_11
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/StructuralMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchemaForMessageInfo(Lcom/android/framework/protobuf/StructuralMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object v0

    return-object v0
.end method

.method static newSchemaForMessageInfo(Lcom/android/framework/protobuf/StructuralMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/StructuralMessageInfo;",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")",
            "Lcom/android/framework/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_c

    move v0, v3

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getFields()[Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v1

    array-length v4, v1

    if-nez v4, :cond_19

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_2a

    :cond_19
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v4

    array-length v5, v1

    sub-int/2addr v5, v3

    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v3

    move/from16 v20, v3

    move v3, v4

    :goto_2a
    array-length v15, v1

    mul-int/lit8 v4, v15, 0x3

    new-array v14, v4, [I

    mul-int/lit8 v4, v15, 0x2

    new-array v13, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v1

    move v7, v2

    :goto_37
    const/16 v8, 0x31

    const/16 v9, 0x12

    if-ge v7, v6, :cond_63

    aget-object v10, v1, v7

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v11

    sget-object v12, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    if-ne v11, v12, :cond_4a

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_4a
    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v11

    if-lt v11, v9, :cond_60

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v9

    if-gt v9, v8, :cond_60

    add-int/lit8 v5, v5, 0x1

    :cond_60
    :goto_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_63
    const/4 v6, 0x0

    if-lez v4, :cond_69

    new-array v7, v4, [I

    goto :goto_6a

    :cond_69
    move-object v7, v6

    :goto_6a
    if-lez v5, :cond_6e

    new-array v6, v5, [I

    :cond_6e
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v10

    if-nez v10, :cond_7a

    sget-object v10, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v12, v10

    goto :goto_7b

    :cond_7a
    move-object v12, v10

    :goto_7b
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v4, v16

    move/from16 v32, v11

    move v11, v10

    move/from16 v10, v32

    :goto_8a
    array-length v5, v1

    if-ge v10, v5, :cond_ea

    aget-object v5, v1, v10

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    invoke-static {v5, v14, v4, v0, v13}, Lcom/android/framework/protobuf/MessageSchema;->storeFieldData(Lcom/android/framework/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V

    array-length v8, v12

    if-ge v11, v8, :cond_a2

    aget v8, v12, v11

    if-ne v8, v2, :cond_a2

    add-int/lit8 v8, v11, 0x1

    aput v4, v12, v11

    move v11, v8

    :cond_a2
    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v8

    sget-object v9, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    if-ne v8, v9, :cond_b3

    add-int/lit8 v8, v21, 0x1

    aput v4, v7, v21

    move/from16 v21, v8

    move/from16 v19, v10

    goto :goto_df

    :cond_b3
    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v8

    const/16 v9, 0x12

    if-lt v8, v9, :cond_dd

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v8

    const/16 v9, 0x31

    if-gt v8, v9, :cond_dd

    add-int/lit8 v8, v22, 0x1

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v17

    move/from16 v19, v10

    invoke-static/range {v17 .. v17}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    aput v9, v6, v22

    move/from16 v22, v8

    goto :goto_df

    :cond_dd
    move/from16 v19, v10

    :goto_df
    nop

    add-int/lit8 v10, v19, 0x1

    add-int/lit8 v4, v4, 0x3

    const/4 v2, 0x0

    const/16 v8, 0x31

    const/16 v9, 0x12

    goto :goto_8a

    :cond_ea
    move/from16 v19, v10

    if-nez v7, :cond_f2

    sget-object v7, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v2, v7

    goto :goto_f3

    :cond_f2
    move-object v2, v7

    :goto_f3
    if-nez v6, :cond_f9

    sget-object v6, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v10, v6

    goto :goto_fa

    :cond_f9
    move-object v10, v6

    :goto_fa
    array-length v4, v12

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v10

    add-int/2addr v4, v5

    new-array v9, v4, [I

    array-length v4, v12

    const/4 v5, 0x0

    invoke-static {v12, v5, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v12

    array-length v6, v2

    invoke-static {v2, v5, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v12

    array-length v6, v2

    add-int/2addr v4, v6

    array-length v6, v10

    invoke-static {v10, v5, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v23, Lcom/android/framework/protobuf/MessageSchema;

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v16

    const/16 v17, 0x1

    array-length v8, v12

    array-length v4, v12

    array-length v5, v2

    add-int v18, v4, v5

    move-object/from16 v4, v23

    move-object v5, v14

    move-object v6, v13

    move v7, v3

    move/from16 v24, v8

    move/from16 v8, v20

    move-object/from16 v25, v9

    move-object/from16 v9, v16

    move-object/from16 v27, v10

    move/from16 v26, v19

    move v10, v0

    move/from16 v28, v11

    move/from16 v11, v17

    move-object/from16 v29, v12

    move-object/from16 v12, v25

    move-object/from16 v30, v13

    move/from16 v13, v24

    move-object/from16 v24, v14

    move/from16 v14, v18

    move/from16 v31, v15

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/android/framework/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/android/framework/protobuf/MessageLite;ZZ[IIILcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)V

    return-object v23
.end method

.method static newSchemaForRawMessageInfo(Lcom/android/framework/protobuf/RawMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;
    .registers 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/RawMessageInfo;",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")",
            "Lcom/android/framework/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    goto :goto_b

    :cond_a
    const/4 v10, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getStringInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_39

    and-int/lit16 v7, v4, 0x1fff

    const/16 v8, 0xd

    :goto_23
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_34

    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_23

    :cond_34
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    :cond_39
    move/from16 v20, v4

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_5d

    and-int/lit16 v5, v4, 0x1fff

    const/16 v8, 0xd

    :goto_47
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    if-lt v7, v6, :cond_58

    and-int/lit16 v7, v4, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_47

    :cond_58
    shl-int v7, v4, v8

    or-int v4, v5, v7

    move v7, v9

    :cond_5d
    move/from16 v21, v4

    if-nez v21, :cond_82

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    const/16 v17, 0x0

    move v2, v5

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v15

    move-object/from16 v29, v16

    move/from16 v16, v17

    goto/16 :goto_1bb

    :cond_82
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_a4

    and-int/lit16 v7, v4, 0x1fff

    const/16 v8, 0xd

    :goto_8e
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_9f

    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_8e

    :cond_9f
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    :cond_a4
    move v7, v4

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_c7

    and-int/lit16 v5, v4, 0x1fff

    const/16 v9, 0xd

    :goto_b1
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_c2

    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_b1

    :cond_c2
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v11

    :cond_c7
    move v5, v4

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_ea

    and-int/lit16 v8, v4, 0x1fff

    const/16 v11, 0xd

    :goto_d4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v4, v9

    if-lt v9, v6, :cond_e5

    and-int/lit16 v9, v4, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_d4

    :cond_e5
    shl-int v9, v4, v11

    or-int v4, v8, v9

    move v9, v12

    :cond_ea
    move v8, v4

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_10d

    and-int/lit16 v9, v4, 0x1fff

    const/16 v12, 0xd

    :goto_f7
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_108

    and-int/lit16 v11, v4, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_f7

    :cond_108
    shl-int v11, v4, v12

    or-int v4, v9, v11

    move v11, v13

    :cond_10d
    move v9, v4

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_130

    and-int/lit16 v11, v4, 0x1fff

    const/16 v13, 0xd

    :goto_11a
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v4, v12

    if-lt v12, v6, :cond_12b

    and-int/lit16 v12, v4, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_11a

    :cond_12b
    shl-int v12, v4, v13

    or-int v4, v11, v12

    move v12, v14

    :cond_130
    move v11, v4

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_153

    and-int/lit16 v12, v4, 0x1fff

    const/16 v14, 0xd

    :goto_13d
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v4, v13

    if-lt v13, v6, :cond_14e

    and-int/lit16 v13, v4, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_13d

    :cond_14e
    shl-int v13, v4, v14

    or-int v4, v12, v13

    move v13, v15

    :cond_153
    move v12, v4

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_178

    and-int/lit16 v13, v4, 0x1fff

    const/16 v15, 0xd

    :goto_160
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v4, v14

    if-lt v14, v6, :cond_172

    and-int/lit16 v14, v4, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_160

    :cond_172
    shl-int v14, v4, v15

    or-int v4, v13, v14

    move/from16 v14, v16

    :cond_178
    move v13, v4

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_19e

    and-int/lit16 v14, v4, 0x1fff

    const/16 v16, 0xd

    :goto_185
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v4, v15

    if-lt v15, v6, :cond_198

    and-int/lit16 v15, v4, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_185

    :cond_198
    shl-int v15, v4, v16

    or-int v4, v14, v15

    move/from16 v15, v17

    :cond_19e
    move v14, v4

    add-int v16, v14, v12

    add-int v2, v16, v13

    new-array v2, v2, [I

    mul-int/lit8 v16, v7, 0x2

    add-int v16, v16, v5

    move-object/from16 v29, v2

    move/from16 v22, v5

    move v2, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move v7, v15

    :goto_1bb
    sget-object v15, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getObjects()[Ljava/lang/Object;

    move-result-object v30

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    mul-int/lit8 v8, v25, 0x3

    new-array v13, v8, [I

    mul-int/lit8 v8, v25, 0x2

    new-array v12, v8, [Ljava/lang/Object;

    move/from16 v8, v28

    add-int v9, v28, v26

    const/4 v11, 0x0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v11

    move/from16 v36, v16

    move v11, v7

    :goto_1e4
    if-ge v11, v1, :cond_42c

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_208

    and-int/lit16 v7, v5, 0x1fff

    const/16 v8, 0xd

    :goto_1f2
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    if-lt v4, v6, :cond_203

    and-int/lit16 v4, v5, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v7, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_1f2

    :cond_203
    shl-int v4, v5, v8

    or-int v5, v7, v4

    move v4, v9

    :cond_208
    move v7, v5

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_22b

    and-int/lit16 v5, v4, 0x1fff

    const/16 v9, 0xd

    :goto_215
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_226

    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_215

    :cond_226
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v11

    :cond_22b
    move v5, v4

    and-int/lit16 v9, v5, 0xff

    and-int/lit16 v11, v5, 0x400

    if-eqz v11, :cond_238

    add-int/lit8 v11, v32, 0x1

    aput v35, v29, v32

    move/from16 v32, v11

    :cond_238
    const/16 v11, 0x33

    if-lt v9, v11, :cond_2e6

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_261

    and-int/lit16 v8, v4, 0x1fff

    const/16 v31, 0xd

    :goto_248
    add-int/lit8 v37, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_25b

    and-int/lit16 v11, v4, 0x1fff

    shl-int v11, v11, v31

    or-int/2addr v8, v11

    add-int/lit8 v31, v31, 0xd

    move/from16 v11, v37

    goto :goto_248

    :cond_25b
    shl-int v11, v4, v31

    or-int v4, v8, v11

    move/from16 v11, v37

    :cond_261
    move v8, v4

    add-int/lit8 v6, v9, -0x33

    const/16 v3, 0x9

    if-eq v6, v3, :cond_28b

    const/16 v3, 0x11

    if-ne v6, v3, :cond_26f

    move/from16 v38, v1

    goto :goto_28d

    :cond_26f
    const/16 v3, 0xc

    if-ne v6, v3, :cond_288

    and-int/lit8 v3, v20, 0x1

    move/from16 v38, v1

    const/4 v1, 0x1

    if-ne v3, v1, :cond_29b

    div-int/lit8 v3, v35, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v1, v36, 0x1

    aget-object v18, v30, v36

    aput-object v18, v12, v3

    move/from16 v36, v1

    goto :goto_29b

    :cond_288
    move/from16 v38, v1

    goto :goto_29b

    :cond_28b
    move/from16 v38, v1

    :goto_28d
    div-int/lit8 v1, v35, 0x3

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v3, v36, 0x1

    aget-object v18, v30, v36

    aput-object v18, v12, v1

    move/from16 v36, v3

    :cond_29b
    :goto_29b
    mul-int/lit8 v1, v8, 0x2

    aget-object v3, v30, v1

    move/from16 v18, v4

    instance-of v4, v3, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_2a9

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_2b2

    :cond_2a9
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v4}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v30, v1

    :goto_2b2
    move/from16 v39, v10

    move/from16 v19, v11

    invoke-virtual {v15, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/lit8 v1, v1, 0x1

    aget-object v3, v30, v1

    instance-of v11, v3, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_2c7

    move-object v11, v3

    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_2d0

    :cond_2c7
    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    invoke-static {v14, v11}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    aput-object v11, v30, v1

    :goto_2d0
    move-object/from16 v40, v3

    move-object/from16 v31, v4

    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v1, 0x0

    move-object/from16 v40, v0

    move/from16 v41, v2

    move v6, v10

    move/from16 v4, v18

    move/from16 v11, v19

    move v10, v7

    goto/16 :goto_3f9

    :cond_2e6
    move/from16 v38, v1

    move/from16 v39, v10

    add-int/lit8 v1, v36, 0x1

    aget-object v3, v30, v36

    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/16 v6, 0x31

    const/16 v10, 0x9

    if-eq v9, v10, :cond_367

    const/16 v10, 0x11

    if-ne v9, v10, :cond_300

    goto/16 :goto_367

    :cond_300
    const/16 v10, 0x1b

    if-eq v9, v10, :cond_358

    if-ne v9, v6, :cond_307

    goto :goto_358

    :cond_307
    const/16 v10, 0xc

    if-eq v9, v10, :cond_343

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_343

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_314

    goto :goto_343

    :cond_314
    const/16 v10, 0x32

    if-ne v9, v10, :cond_341

    add-int/lit8 v10, v33, 0x1

    aput v35, v29, v33

    div-int/lit8 v11, v35, 0x3

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v18, v1, 0x1

    aget-object v1, v30, v1

    aput-object v1, v12, v11

    and-int/lit16 v1, v5, 0x800

    if-eqz v1, :cond_33b

    div-int/lit8 v1, v35, 0x3

    mul-int/lit8 v1, v1, 0x2

    const/4 v11, 0x1

    add-int/2addr v1, v11

    add-int/lit8 v11, v18, 0x1

    aget-object v18, v30, v18

    aput-object v18, v12, v1

    move/from16 v33, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_373

    :cond_33b
    move/from16 v33, v10

    move/from16 v1, v18

    const/4 v11, 0x1

    goto :goto_373

    :cond_341
    const/4 v11, 0x1

    goto :goto_373

    :cond_343
    :goto_343
    and-int/lit8 v10, v20, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_356

    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    add-int/lit8 v11, v1, 0x1

    aget-object v1, v30, v1

    aput-object v1, v12, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_373

    :cond_356
    const/4 v11, 0x1

    goto :goto_373

    :cond_358
    :goto_358
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/2addr v10, v11

    add-int/lit8 v11, v1, 0x1

    aget-object v1, v30, v1

    aput-object v1, v12, v10

    move v1, v11

    const/4 v11, 0x1

    goto :goto_373

    :cond_367
    :goto_367
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v12, v10

    :goto_373
    move v10, v7

    invoke-virtual {v15, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v6, v6

    and-int/lit8 v7, v20, 0x1

    if-ne v7, v11, :cond_3da

    const/16 v7, 0x11

    if-gt v9, v7, :cond_3da

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v8, 0xd800

    if-lt v4, v8, :cond_3ae

    and-int/lit16 v8, v4, 0x1fff

    const/16 v18, 0xd

    :goto_390
    add-int/lit8 v19, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    const v11, 0xd800

    if-lt v7, v11, :cond_3a7

    and-int/lit16 v7, v4, 0x1fff

    shl-int v7, v7, v18

    or-int/2addr v8, v7

    add-int/lit8 v18, v18, 0xd

    move/from16 v7, v19

    const/4 v11, 0x1

    goto :goto_390

    :cond_3a7
    shl-int v7, v4, v18

    or-int v4, v8, v7

    move/from16 v8, v19

    goto :goto_3b0

    :cond_3ae
    move v11, v8

    move v8, v7

    :goto_3b0
    move v7, v4

    mul-int/lit8 v18, v2, 0x2

    div-int/lit8 v19, v7, 0x20

    add-int v18, v18, v19

    aget-object v11, v30, v18

    move-object/from16 v40, v0

    instance-of v0, v11, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3c3

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_3cc

    :cond_3c3
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v30, v18

    :goto_3cc
    move/from16 v19, v1

    move/from16 v41, v2

    invoke-virtual {v15, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v7, v7, 0x20

    move v0, v1

    move v1, v7

    goto :goto_3e2

    :cond_3da
    move-object/from16 v40, v0

    move/from16 v19, v1

    move/from16 v41, v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3e2
    const/16 v2, 0x12

    if-lt v9, v2, :cond_3f5

    const/16 v2, 0x31

    if-gt v9, v2, :cond_3f5

    add-int/lit8 v2, v34, 0x1

    aput v6, v29, v34

    move v3, v0

    move/from16 v34, v2

    move v11, v8

    move/from16 v36, v19

    goto :goto_3f9

    :cond_3f5
    move v3, v0

    move v11, v8

    move/from16 v36, v19

    :goto_3f9
    add-int/lit8 v0, v35, 0x1

    aput v10, v13, v35

    add-int/lit8 v2, v0, 0x1

    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_406

    const/high16 v7, 0x20000000

    goto :goto_407

    :cond_406
    const/4 v7, 0x0

    :goto_407
    and-int/lit16 v8, v5, 0x100

    if-eqz v8, :cond_40e

    const/high16 v8, 0x10000000

    goto :goto_40f

    :cond_40e
    const/4 v8, 0x0

    :goto_40f
    or-int/2addr v7, v8

    shl-int/lit8 v8, v9, 0x14

    or-int/2addr v7, v8

    or-int/2addr v7, v6

    aput v7, v13, v0

    add-int/lit8 v35, v2, 0x1

    shl-int/lit8 v0, v1, 0x14

    or-int/2addr v0, v3

    aput v0, v13, v2

    move/from16 v31, v4

    move/from16 v1, v38

    move/from16 v10, v39

    move-object/from16 v0, v40

    move/from16 v2, v41

    const v6, 0xd800

    goto/16 :goto_1e4

    :cond_42c
    move-object/from16 v40, v0

    move/from16 v38, v1

    move/from16 v41, v2

    new-instance v0, Lcom/android/framework/protobuf/MessageSchema;

    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v9

    const/4 v1, 0x0

    add-int v2, v28, v26

    move-object v4, v0

    move-object v5, v13

    move-object v6, v12

    move/from16 v7, v23

    move/from16 v8, v24

    move v3, v11

    move v11, v1

    move-object v1, v12

    move-object/from16 v12, v29

    move-object/from16 v37, v13

    move/from16 v13, v28

    move-object/from16 v42, v14

    move v14, v2

    move-object v2, v15

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/android/framework/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/android/framework/protobuf/MessageLite;ZZ[IIILcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)V

    return-object v0
.end method

.method private numberAt(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    aget v0, v0, p1

    return v0
.end method

.method private static offset(I)J
    .registers 3

    const v0, 0xfffff

    and-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static oneofFloatAt(Ljava/lang/Object;J)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static oneofIntAt(Ljava/lang/Object;J)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static oneofLongAt(Ljava/lang/Object;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private parseMapField(Ljava/lang/Object;[BIIIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p6

    sget-object v11, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    move/from16 v12, p5

    invoke-direct {p0, v12}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v8, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v1, v0}, Lcom/android/framework/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object v1, v0

    iget-object v2, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v2, v13}, Lcom/android/framework/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v2, v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v8, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v14, v0

    goto :goto_2b

    :cond_2a
    move-object v14, v0

    :goto_2b
    iget-object v0, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v0, v13}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    iget-object v0, v7, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v0, v14}, Lcom/android/framework/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->decodeMapEntry([BIILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method private parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move-object/from16 v7, p13

    sget-object v6, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v3, v15, 0x2

    aget v2, v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    const/16 v16, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    packed-switch p9, :pswitch_data_29e

    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    goto/16 :goto_29b

    :pswitch_32
    const/4 v2, 0x3

    if-ne v12, v2, :cond_7b

    and-int/lit8 v2, v10, -0x8

    or-int/lit8 v17, v2, 0x4

    nop

    invoke-direct {v0, v15}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    move-object/from16 v3, p2

    move-wide v8, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v10, v6

    move/from16 v6, v17

    move-object v0, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {v10, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v11, :cond_5a

    invoke-virtual {v10, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_5b

    :cond_5a
    nop

    :goto_5b
    move-object/from16 v3, v16

    if-nez v3, :cond_65

    iget-object v4, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6e

    :cond_65
    iget-object v4, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6e
    invoke-virtual {v10, v1, v8, v9, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    move v0, v2

    goto/16 :goto_29c

    :cond_7b
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    move/from16 v5, p3

    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    goto/16 :goto_29b

    :pswitch_89
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    if-nez v12, :cond_af

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    invoke-static {v4, v5, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget-wide v8, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29c

    :cond_af
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29b

    :pswitch_bb
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    if-nez v12, :cond_de

    invoke-static {v4, v5, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29c

    :cond_de
    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_29b

    :pswitch_e5
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    if-nez v12, :cond_12e

    invoke-static {v4, v5, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v0, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move-object v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_119

    invoke-interface {v5, v3}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v9

    if-eqz v9, :cond_107

    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    goto :goto_11e

    :cond_107
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v9

    move-object/from16 p3, v5

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v10

    move/from16 v10, p5

    invoke-virtual {v9, v10, v4}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_128

    :cond_119
    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    :goto_11e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_128
    move-object/from16 v9, p2

    move v0, v2

    move-object v4, v5

    goto/16 :goto_29c

    :cond_12e
    move-object v8, v0

    move-object v4, v10

    move-object/from16 v0, p0

    move/from16 v10, p5

    move-object/from16 v9, p2

    goto/16 :goto_29b

    :pswitch_138
    move-object v8, v7

    move-wide/from16 v20, v4

    move-object v4, v6

    move-wide/from16 v6, v20

    move v5, v9

    if-ne v12, v3, :cond_152

    move-object/from16 v9, p2

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget-object v3, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_29c

    :cond_152
    move-object/from16 v9, p2

    goto/16 :goto_29b

    :pswitch_156
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-ne v12, v3, :cond_190

    nop

    invoke-direct {v0, v15}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    move/from16 v3, p4

    invoke-static {v2, v9, v5, v3, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v11, :cond_176

    invoke-virtual {v4, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_177

    :cond_176
    nop

    :goto_177
    move-object/from16 v5, v16

    if-nez v5, :cond_181

    iget-object v0, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_18a

    :cond_181
    iget-object v0, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v5, v0}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_18a
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_29c

    :cond_190
    move/from16 v3, p4

    goto/16 :goto_29b

    :pswitch_194
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-ne v12, v3, :cond_29b

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-nez v2, :cond_1ac

    const-string v3, ""

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1cb

    :cond_1ac
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_1c0

    add-int v3, v0, v2

    invoke-static {v9, v0, v3}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_1bb

    goto :goto_1c0

    :cond_1bb
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    :cond_1c0
    :goto_1c0
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v9, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_1cb
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29c

    :pswitch_1d0
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-nez v12, :cond_29b

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_1e8

    const/4 v3, 0x1

    goto :goto_1e9

    :cond_1e8
    const/4 v3, 0x0

    :goto_1e9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29c

    :pswitch_1f5
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-ne v12, v2, :cond_29b

    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29c

    :pswitch_211
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    const/4 v0, 0x1

    if-ne v12, v0, :cond_29b

    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_29c

    :pswitch_22e
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-nez v12, :cond_29b

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29c

    :pswitch_249
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-nez v12, :cond_29b

    invoke-static {v9, v5, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v8, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29c

    :pswitch_264
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    if-ne v12, v2, :cond_29b

    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29c

    :pswitch_27f
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    const/4 v0, 0x1

    if-ne v12, v0, :cond_29b

    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_29c

    :cond_29b
    :goto_29b
    move v0, v5

    :goto_29c
    return v0

    nop

    :pswitch_data_29e
    .packed-switch 0x33
        :pswitch_27f
        :pswitch_264
        :pswitch_249
        :pswitch_249
        :pswitch_22e
        :pswitch_211
        :pswitch_1f5
        :pswitch_1d0
        :pswitch_194
        :pswitch_156
        :pswitch_138
        :pswitch_22e
        :pswitch_e5
        :pswitch_1f5
        :pswitch_211
        :pswitch_bb
        :pswitch_89
        :pswitch_32
    .end packed-switch
.end method

.method private parseProto3Message(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p3

    :goto_14
    if-ge v0, v13, :cond_413

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_26

    invoke-static {v0, v12, v4, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    iget v0, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move/from16 v16, v0

    move v10, v4

    goto :goto_29

    :cond_26
    move/from16 v16, v0

    move v10, v4

    :goto_29
    ushr-int/lit8 v8, v16, 0x3

    and-int/lit8 v7, v16, 0x7

    if-le v8, v2, :cond_37

    div-int/lit8 v0, v3, 0x3

    invoke-direct {v15, v8, v0}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v0

    move v6, v0

    goto :goto_3c

    :cond_37
    invoke-direct {v15, v8}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v0

    move v6, v0

    :goto_3c
    move/from16 v17, v8

    const/4 v0, -0x1

    if-ne v6, v0, :cond_4c

    const/4 v0, 0x0

    move/from16 v19, v0

    move/from16 p3, v7

    move/from16 v18, v8

    move-object/from16 v27, v9

    goto/16 :goto_3ed

    :cond_4c
    iget-object v0, v15, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, v6, 0x1

    aget v4, v0, v1

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v5

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    const/16 v0, 0x11

    const/4 v1, 0x2

    if-gt v5, v0, :cond_2b7

    const/4 v0, 0x1

    packed-switch v5, :pswitch_data_420

    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v11, v9

    move-wide v8, v2

    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_76
    if-nez v7, :cond_99

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    iget-wide v0, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v18

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v6

    move v0, v10

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_99
    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_ab
    move-wide/from16 v20, v2

    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    if-nez v7, :cond_ca

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    move-wide/from16 v4, v20

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_ca
    move-wide/from16 v4, v20

    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_d7
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-nez v7, :cond_ef

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_ef
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_fa
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-ne v7, v1, :cond_112

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_112
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_11d
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-ne v7, v1, :cond_14b

    nop

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-static {v0, v12, v10, v13, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    invoke-virtual {v9, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13a

    iget-object v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_144

    :cond_13a
    iget-object v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    nop

    :goto_144
    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_14b
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_156
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-ne v7, v1, :cond_178

    const/high16 v0, 0x20000000

    and-int/2addr v0, v8

    if-nez v0, :cond_168

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_16c

    :cond_168
    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_16c
    iget-object v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_178
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_183
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-nez v7, :cond_1a4

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-wide v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_198

    goto :goto_199

    :cond_198
    const/4 v0, 0x0

    :goto_199
    invoke-static {v14, v4, v5, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    move v0, v1

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_1a4
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_1af
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    const/4 v0, 0x5

    if-ne v7, v0, :cond_1c8

    invoke-static {v12, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v10, 0x4

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_1c8
    move/from16 v19, v6

    move v14, v7

    move-object/from16 v27, v9

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_1d3
    move/from16 v23, v5

    move/from16 v22, v8

    move v8, v4

    move-wide v4, v2

    if-ne v7, v0, :cond_1f8

    invoke-static {v12, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v18

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v4

    move/from16 v21, v8

    move-object/from16 v20, v9

    move-wide v8, v4

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v10, 0x8

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v9, v20

    goto/16 :goto_14

    :cond_1f8
    move/from16 v21, v8

    move-object/from16 v20, v9

    move-wide v8, v4

    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v20

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_208
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object/from16 v20, v9

    move-wide v8, v2

    if-nez v7, :cond_226

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move-object/from16 v4, v20

    invoke-virtual {v4, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v9, v4

    move v3, v6

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_14

    :cond_226
    move-object/from16 v4, v20

    move-object/from16 v27, v4

    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_233
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v4, v9

    move-wide v8, v2

    if-nez v7, :cond_25a

    invoke-static {v12, v10, v11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v10

    iget-wide v2, v11, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v4

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move-wide v2, v8

    move-object v11, v4

    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v6

    move v0, v10

    move-object v9, v11

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v11, p5

    goto/16 :goto_14

    :cond_25a
    move-object v11, v4

    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_266
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v11, v9

    move-wide v8, v2

    const/4 v0, 0x5

    if-ne v7, v0, :cond_284

    invoke-static {v12, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v10, 0x4

    move v3, v6

    move-object v9, v11

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v11, p5

    goto/16 :goto_14

    :cond_284
    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_3af

    :pswitch_28f
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v11, v9

    move-wide v8, v2

    if-ne v7, v0, :cond_2ac

    invoke-static {v12, v10}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v10, 0x8

    move v3, v6

    move-object v9, v11

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v11, p5

    goto/16 :goto_14

    :cond_2ac
    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_3af

    :cond_2b7
    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v22, v8

    move-object v11, v9

    move-wide v8, v2

    const/16 v0, 0x1b

    if-ne v5, v0, :cond_317

    if-ne v7, v1, :cond_30b

    invoke-virtual {v11, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_2e7

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    nop

    if-nez v1, :cond_2db

    const/16 v2, 0xa

    goto :goto_2dd

    :cond_2db
    mul-int/lit8 v2, v1, 0x2

    :goto_2dd
    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v11, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v18, v0

    goto :goto_2e9

    :cond_2e7
    move-object/from16 v18, v0

    :goto_2e9
    nop

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move v15, v5

    move-object/from16 v5, v18

    move/from16 v19, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v15, p0

    move-object v9, v11

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v11, p5

    goto/16 :goto_14

    :cond_30b
    move v15, v5

    move/from16 v19, v6

    move v14, v7

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    goto/16 :goto_3af

    :cond_317
    move v15, v5

    move/from16 v19, v6

    const/16 v0, 0x31

    if-gt v15, v0, :cond_36b

    move v6, v10

    move/from16 v5, v21

    int-to-long v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v20, v3

    move v3, v10

    move/from16 v4, p4

    move/from16 v18, v5

    move/from16 v5, v16

    move/from16 v24, v6

    move/from16 v6, v22

    move/from16 p3, v7

    move-wide/from16 v25, v8

    move/from16 v28, v22

    move/from16 v22, v18

    move/from16 v18, v28

    move/from16 v8, v19

    move/from16 v23, v10

    move-object/from16 v27, v11

    move-wide/from16 v9, v20

    move v11, v15

    move-wide/from16 v12, v25

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/android/framework/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v1, v24

    if-eq v0, v1, :cond_368

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v9, v27

    goto/16 :goto_14

    :cond_368
    move v10, v0

    goto/16 :goto_3ed

    :cond_36b
    move/from16 p3, v7

    move-wide/from16 v25, v8

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v18, v22

    move/from16 v22, v21

    const/16 v0, 0x32

    if-ne v15, v0, :cond_3b4

    move/from16 v14, p3

    if-ne v14, v1, :cond_3af

    move/from16 v9, v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v25

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/framework/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v9, :cond_3ab

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v9, v27

    goto/16 :goto_14

    :cond_3ab
    move v10, v0

    move/from16 p3, v14

    goto :goto_3ed

    :cond_3af
    :goto_3af
    move/from16 p3, v14

    move/from16 v10, v23

    goto :goto_3ed

    :cond_3b4
    move/from16 v14, p3

    move/from16 v13, v23

    nop

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v18

    move v7, v14

    move/from16 v8, v22

    move v9, v15

    move-wide/from16 v10, v25

    move/from16 v12, v19

    move v14, v13

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v14, :cond_3ec

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v9, v27

    goto/16 :goto_14

    :cond_3ec
    move v10, v0

    :goto_3ed
    nop

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move v2, v10

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v9, v27

    goto/16 :goto_14

    :cond_413
    move-object/from16 v27, v9

    move/from16 v4, p4

    if-ne v0, v4, :cond_41a

    return v0

    :cond_41a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    nop

    :pswitch_data_420
    .packed-switch 0x0
        :pswitch_28f
        :pswitch_266
        :pswitch_233
        :pswitch_233
        :pswitch_208
        :pswitch_1d3
        :pswitch_1af
        :pswitch_183
        :pswitch_156
        :pswitch_11d
        :pswitch_fa
        :pswitch_208
        :pswitch_d7
        :pswitch_1af
        :pswitch_1d3
        :pswitch_ab
        :pswitch_76
    .end packed-switch
.end method

.method private parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    sget-object v2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-interface {v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    nop

    if-nez v3, :cond_28

    const/16 v4, 0xa

    goto :goto_2a

    :cond_28
    mul-int/lit8 v4, v3, 0x2

    :goto_2a
    invoke-interface {v2, v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v2

    sget-object v4, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v8, v2

    goto :goto_36

    :cond_35
    move-object v8, v2

    :goto_36
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch p11, :pswitch_data_21e

    move/from16 v14, p6

    move-object v13, v8

    goto/16 :goto_21b

    :pswitch_41
    const/4 v2, 0x3

    if-ne v11, v2, :cond_5d

    nop

    invoke-direct {v0, v12}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v8

    move-object v13, v8

    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21c

    :cond_5d
    move-object v13, v8

    move/from16 v14, p6

    goto/16 :goto_21b

    :pswitch_62
    move-object v13, v8

    if-ne v11, v4, :cond_6d

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21c

    :cond_6d
    if-nez v11, :cond_82

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeSInt64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21c

    :cond_82
    move/from16 v14, p6

    goto/16 :goto_21b

    :pswitch_86
    move-object v13, v8

    if-ne v11, v4, :cond_91

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21c

    :cond_91
    if-nez v11, :cond_a6

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeSInt32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    goto/16 :goto_21c

    :cond_a6
    move/from16 v14, p6

    goto/16 :goto_21b

    :pswitch_aa
    move-object v13, v8

    if-ne v11, v4, :cond_b2

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_c3

    :cond_b2
    if-nez v11, :cond_e8

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    :goto_c3
    move-object v3, v1

    check-cast v3, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_cf

    const/4 v3, 0x0

    :cond_cf
    nop

    invoke-direct {v0, v12}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v4

    iget-object v5, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    move/from16 v14, p6

    invoke-static {v14, v13, v4, v3, v5}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    if-eqz v3, :cond_21c

    move-object v4, v1

    check-cast v4, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-object v3, v4, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    goto/16 :goto_21c

    :cond_e8
    move/from16 v14, p6

    goto/16 :goto_21b

    :pswitch_ec
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_21b

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytesList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :pswitch_102
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_21b

    nop

    invoke-direct {v0, v12}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :pswitch_11d
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_21b

    const-wide/32 v2, 0x20000000

    and-long v2, p9, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13e

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :cond_13e
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringListRequireUtf8(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :pswitch_14f
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_15a

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :cond_15a
    if-nez v11, :cond_21b

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBoolList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :pswitch_16d
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_178

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :cond_178
    if-ne v11, v2, :cond_21b

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :pswitch_18b
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_196

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :cond_196
    if-ne v11, v3, :cond_21b

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :pswitch_1a9
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_1b4

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :cond_1b4
    if-nez v11, :cond_21b

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto/16 :goto_21c

    :pswitch_1c7
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_1d1

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21c

    :cond_1d1
    if-nez v11, :cond_21b

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21c

    :pswitch_1e3
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_1ed

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21c

    :cond_1ed
    if-ne v11, v2, :cond_21b

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloatList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21c

    :pswitch_1ff
    move/from16 v14, p6

    move-object v13, v8

    if-ne v11, v4, :cond_209

    invoke-static {v9, v10, v13, v15}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21c

    :cond_209
    if-ne v11, v3, :cond_21b

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDoubleList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_21c

    :cond_21b
    :goto_21b
    move v2, v10

    :cond_21c
    :goto_21c
    return v2

    nop

    :pswitch_data_21e
    .packed-switch 0x12
        :pswitch_1ff
        :pswitch_1e3
        :pswitch_1c7
        :pswitch_1c7
        :pswitch_1a9
        :pswitch_18b
        :pswitch_16d
        :pswitch_14f
        :pswitch_11d
        :pswitch_102
        :pswitch_ec
        :pswitch_1a9
        :pswitch_aa
        :pswitch_16d
        :pswitch_18b
        :pswitch_86
        :pswitch_62
        :pswitch_1ff
        :pswitch_1e3
        :pswitch_1c7
        :pswitch_1c7
        :pswitch_1a9
        :pswitch_18b
        :pswitch_16d
        :pswitch_14f
        :pswitch_1a9
        :pswitch_aa
        :pswitch_16d
        :pswitch_18b
        :pswitch_86
        :pswitch_62
        :pswitch_41
    .end packed-switch
.end method

.method private positionForFieldNumber(I)I
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private positionForFieldNumber(II)I
    .registers 4

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method private presenceMaskAndOffsetAt(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private readGroupList(Ljava/lang/Object;JLcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/Schema<",
            "TE;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p4, v0, p5, p6}, Lcom/android/framework/protobuf/Reader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private readMessageList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/Schema<",
            "TE;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p3, v2, p4, p5}, Lcom/android/framework/protobuf/Reader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private readString(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/framework/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    :cond_12
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->lite:Z

    if-eqz v0, :cond_22

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/framework/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    :cond_22
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2d
    return-void
.end method

.method private readStringList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/framework/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    goto :goto_21

    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/framework/protobuf/Reader;->readStringList(Ljava/util/List;)V

    :goto_21
    return-void
.end method

.method private static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return-object v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found. Known fields are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setFieldPresent(Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const/4 v1, 0x1

    ushr-int/lit8 v2, v0, 0x14

    shl-int/2addr v1, v2

    const v2, 0xfffff

    and-int/2addr v2, v0

    int-to-long v2, v2

    nop

    invoke-static {p1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    or-int/2addr v4, v1

    invoke-static {p1, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private setOneofPresent(Ljava/lang/Object;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private slowPositionForFieldNumber(II)I
    .registers 7

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-gt p2, v0, :cond_1e

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ge p1, v3, :cond_1b

    add-int/lit8 v0, v1, -0x1

    goto :goto_1d

    :cond_1b
    add-int/lit8 p2, v1, 0x1

    :goto_1d
    goto :goto_7

    :cond_1e
    const/4 v1, -0x1

    return v1
.end method

.method private static storeFieldData(Lcom/android/framework/protobuf/FieldInfo;[IIZ[Ljava/lang/Object;)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getOneof()Lcom/android/framework/protobuf/OneofInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    invoke-virtual {v0}, Lcom/android/framework/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/android/framework/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    goto :goto_71

    :cond_24
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v3

    if-nez p3, :cond_58

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->isList()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->isMap()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getPresenceMask()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v1, v3

    move v3, v4

    move v4, v5

    goto :goto_71

    :cond_58
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_64

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    goto :goto_71

    :cond_64
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    move v1, v3

    move v3, v4

    move v4, v5

    :goto_71
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v5

    aput v5, p1, p2

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_83

    const/high16 v6, 0x20000000

    goto :goto_84

    :cond_83
    move v6, v7

    :goto_84
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_8c

    const/high16 v7, 0x10000000

    :cond_8c
    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v2

    aput v6, p1, v5

    add-int/lit8 v5, p2, 0x2

    shl-int/lit8 v6, v4, 0x14

    or-int/2addr v6, v3

    aput v6, p1, v5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_cc

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, p4, v6

    if-eqz v5, :cond_b9

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p4, v6

    goto :goto_e9

    :cond_b9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_e9

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p4, v6

    goto :goto_e9

    :cond_cc
    if-eqz v5, :cond_d7

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p4, v6

    goto :goto_e9

    :cond_d7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_e9

    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p4, v6

    :cond_e9
    :goto_e9
    return-void
.end method

.method private static type(I)I
    .registers 2

    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private typeAndOffsetAt(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v5, :cond_23

    iget-object v5, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v5, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_23

    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/util/Map$Entry;

    :cond_23
    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    sget-object v8, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    :goto_2b
    if-ge v9, v7, :cond_5c1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v12

    invoke-static {v11}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-boolean v10, v0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    move-object/from16 v17, v4

    if-nez v10, :cond_64

    const/16 v10, 0x11

    if-gt v13, v10, :cond_64

    iget-object v10, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v18, v9, 0x2

    aget v14, v10, v18

    const v10, 0xfffff

    and-int/2addr v10, v14

    if-eq v10, v5, :cond_5b

    move v5, v10

    move/from16 v19, v5

    int-to-long v4, v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move/from16 v5, v19

    :cond_5b
    ushr-int/lit8 v4, v14, 0x14

    const/16 v18, 0x1

    shl-int v15, v18, v4

    move-object/from16 v4, v17

    goto :goto_66

    :cond_64
    move-object/from16 v4, v17

    :goto_66
    if-eqz v4, :cond_85

    iget-object v10, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v10, v4}, Lcom/android/framework/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v10

    if-gt v10, v12, :cond_85

    iget-object v10, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v10, v2, v4}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    goto :goto_83

    :cond_82
    const/4 v10, 0x0

    :goto_83
    move-object v4, v10

    goto :goto_66

    :cond_85
    move-object/from16 v17, v4

    move v10, v5

    invoke-static {v11}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    move/from16 v19, v7

    const/4 v7, 0x0

    packed-switch v13, :pswitch_data_5e2

    move/from16 v16, v10

    move/from16 v20, v11

    goto/16 :goto_5b7

    :pswitch_98
    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_ae

    nop

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    move/from16 v16, v10

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :cond_ae
    move/from16 v16, v10

    goto/16 :goto_5b7

    :pswitch_b2
    move/from16 v16, v10

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_c5

    move/from16 v20, v11

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5b7

    :cond_c5
    move/from16 v20, v11

    goto/16 :goto_5b7

    :pswitch_c9
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5b7

    :pswitch_dc
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5b7

    :pswitch_ef
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5b7

    :pswitch_102
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5b7

    :pswitch_115
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5b7

    :pswitch_128
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5b7

    :pswitch_13d
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_154
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5b7

    :pswitch_167
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5b7

    :pswitch_17a
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5b7

    :pswitch_18d
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5b7

    :pswitch_1a0
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5b7

    :pswitch_1b3
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5b7

    :pswitch_1c6
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5b7

    :pswitch_1d9
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5b7

    :pswitch_1ec
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v1, v12, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5b7

    :pswitch_1ff
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v2, v12, v7, v9}, Lcom/android/framework/protobuf/MessageSchema;->writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_5b7

    :pswitch_20c
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v11

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_223
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x1

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_237
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_24b
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_25f
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_273
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_287
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_29b
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2af
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2c3
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2d7
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2eb
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_2ff
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_313
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_327
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_33b
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_34e
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_361
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_374
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_387
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_39a
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_3ad
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5b7

    :pswitch_3c0
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v11

    invoke-static {v7, v10, v2, v11}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_3d7
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v7, v10, v2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5b7

    :pswitch_3ea
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_3fd
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_410
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_423
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_436
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_449
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_45c
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_46f
    move/from16 v16, v10

    move/from16 v20, v11

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v10, v11, v2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5b7

    :pswitch_482
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    nop

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_498
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5b7

    :pswitch_4a9
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5b7

    :pswitch_4ba
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5b7

    :pswitch_4cb
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5b7

    :pswitch_4dc
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5b7

    :pswitch_4ed
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5b7

    :pswitch_4fe
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5b7

    :pswitch_511
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5b7

    :pswitch_526
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5b7

    :pswitch_537
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5b7

    :pswitch_548
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5b7

    :pswitch_558
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5b7

    :pswitch_568
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto :goto_5b7

    :pswitch_578
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5b7

    :pswitch_588
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5b7

    :pswitch_598
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5b7

    :pswitch_5a8
    move/from16 v16, v10

    move/from16 v20, v11

    and-int v7, v6, v15

    if-eqz v7, :cond_5b7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    :cond_5b7
    :goto_5b7
    add-int/lit8 v9, v9, 0x3

    move/from16 v5, v16

    move-object/from16 v4, v17

    move/from16 v7, v19

    goto/16 :goto_2b

    :cond_5c1
    move-object/from16 v17, v4

    move/from16 v19, v7

    :goto_5c5
    if-eqz v4, :cond_5dc

    iget-object v7, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v7, v2, v4}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_5da

    :cond_5d9
    const/4 v7, 0x0

    :goto_5da
    move-object v4, v7

    goto :goto_5c5

    :cond_5dc
    iget-object v7, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v7, v1, v2}, Lcom/android/framework/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    return-void

    :pswitch_data_5e2
    .packed-switch 0x0
        :pswitch_5a8
        :pswitch_598
        :pswitch_588
        :pswitch_578
        :pswitch_568
        :pswitch_558
        :pswitch_548
        :pswitch_537
        :pswitch_526
        :pswitch_511
        :pswitch_4fe
        :pswitch_4ed
        :pswitch_4dc
        :pswitch_4cb
        :pswitch_4ba
        :pswitch_4a9
        :pswitch_498
        :pswitch_482
        :pswitch_46f
        :pswitch_45c
        :pswitch_449
        :pswitch_436
        :pswitch_423
        :pswitch_410
        :pswitch_3fd
        :pswitch_3ea
        :pswitch_3d7
        :pswitch_3c0
        :pswitch_3ad
        :pswitch_39a
        :pswitch_387
        :pswitch_374
        :pswitch_361
        :pswitch_34e
        :pswitch_33b
        :pswitch_327
        :pswitch_313
        :pswitch_2ff
        :pswitch_2eb
        :pswitch_2d7
        :pswitch_2c3
        :pswitch_2af
        :pswitch_29b
        :pswitch_287
        :pswitch_273
        :pswitch_25f
        :pswitch_24b
        :pswitch_237
        :pswitch_223
        :pswitch_20c
        :pswitch_1ff
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1c6
        :pswitch_1b3
        :pswitch_1a0
        :pswitch_18d
        :pswitch_17a
        :pswitch_167
        :pswitch_154
        :pswitch_13d
        :pswitch_128
        :pswitch_115
        :pswitch_102
        :pswitch_ef
        :pswitch_dc
        :pswitch_c9
        :pswitch_b2
        :pswitch_98
    .end packed-switch
.end method

.method private writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    :cond_1d
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    const/4 v3, 0x0

    :goto_21
    const/4 v4, 0x0

    if-ge v3, v2, :cond_5ab

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    :goto_2c
    if-eqz v1, :cond_4b

    iget-object v7, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v7, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v7

    if-gt v7, v6, :cond_4b

    iget-object v7, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_49

    :cond_48
    move-object v7, v4

    :goto_49
    move-object v1, v7

    goto :goto_2c

    :cond_4b
    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_5c8

    goto/16 :goto_5a7

    :pswitch_56
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_6e
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5a7

    :pswitch_81
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5a7

    :pswitch_94
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5a7

    :pswitch_a7
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5a7

    :pswitch_ba
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5a7

    :pswitch_cd
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5a7

    :pswitch_e0
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5a7

    :pswitch_f6
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_10d
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5a7

    :pswitch_120
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5a7

    :pswitch_133
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5a7

    :pswitch_146
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5a7

    :pswitch_159
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5a7

    :pswitch_16c
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5a7

    :pswitch_17f
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5a7

    :pswitch_192
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5a7

    :pswitch_1a5
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5a7

    :pswitch_1b8
    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v6, v4, v3}, Lcom/android/framework/protobuf/MessageSchema;->writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_5a7

    :pswitch_1c5
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_1dd
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_1f1
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_205
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_219
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_22d
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_241
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_255
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_269
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_27d
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_291
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2a5
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2b9
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2cd
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2e1
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_2f5
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_309
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_31d
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_331
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_345
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_359
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_36d
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5a7

    :pswitch_381
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_399
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5a7

    :pswitch_3ad
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_3c1
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_3d5
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_3e9
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_3fd
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_411
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_425
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_439
    nop

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v4, v7, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5a7

    :pswitch_44d
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_465
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5a7

    :pswitch_478
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5a7

    :pswitch_48b
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5a7

    :pswitch_49e
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5a7

    :pswitch_4b1
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5a7

    :pswitch_4c4
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5a7

    :pswitch_4d7
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5a7

    :pswitch_4ed
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5a7

    :pswitch_504
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5a7

    :pswitch_517
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5a7

    :pswitch_52a
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5a7

    :pswitch_53c
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5a7

    :pswitch_54e
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto :goto_5a7

    :pswitch_560
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5a7

    :pswitch_572
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5a7

    :pswitch_584
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5a7

    :pswitch_596
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5a7

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    :cond_5a7
    :goto_5a7
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_21

    :cond_5ab
    :goto_5ab
    if-eqz v1, :cond_5c2

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v3, p2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_5c0

    :cond_5bf
    move-object v3, v4

    :goto_5c0
    move-object v1, v3

    goto :goto_5ab

    :cond_5c2
    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    return-void

    :pswitch_data_5c8
    .packed-switch 0x0
        :pswitch_596
        :pswitch_584
        :pswitch_572
        :pswitch_560
        :pswitch_54e
        :pswitch_53c
        :pswitch_52a
        :pswitch_517
        :pswitch_504
        :pswitch_4ed
        :pswitch_4d7
        :pswitch_4c4
        :pswitch_4b1
        :pswitch_49e
        :pswitch_48b
        :pswitch_478
        :pswitch_465
        :pswitch_44d
        :pswitch_439
        :pswitch_425
        :pswitch_411
        :pswitch_3fd
        :pswitch_3e9
        :pswitch_3d5
        :pswitch_3c1
        :pswitch_3ad
        :pswitch_399
        :pswitch_381
        :pswitch_36d
        :pswitch_359
        :pswitch_345
        :pswitch_331
        :pswitch_31d
        :pswitch_309
        :pswitch_2f5
        :pswitch_2e1
        :pswitch_2cd
        :pswitch_2b9
        :pswitch_2a5
        :pswitch_291
        :pswitch_27d
        :pswitch_269
        :pswitch_255
        :pswitch_241
        :pswitch_22d
        :pswitch_219
        :pswitch_205
        :pswitch_1f1
        :pswitch_1dd
        :pswitch_1c5
        :pswitch_1b8
        :pswitch_1a5
        :pswitch_192
        :pswitch_17f
        :pswitch_16c
        :pswitch_159
        :pswitch_146
        :pswitch_133
        :pswitch_120
        :pswitch_10d
        :pswitch_f6
        :pswitch_e0
        :pswitch_cd
        :pswitch_ba
        :pswitch_a7
        :pswitch_94
        :pswitch_81
        :pswitch_6e
        :pswitch_56
    .end packed-switch
.end method

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    :cond_22
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    :goto_27
    const/4 v3, 0x0

    if-ltz v2, :cond_5b1

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    :goto_32
    if-eqz v1, :cond_51

    iget-object v6, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_51

    iget-object v6, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_4f

    :cond_4e
    move-object v6, v3

    :goto_4f
    move-object v1, v6

    goto :goto_32

    :cond_51
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_5ca

    goto/16 :goto_5ad

    :pswitch_5c
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_74
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ad

    :pswitch_87
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ad

    :pswitch_9a
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ad

    :pswitch_ad
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ad

    :pswitch_c0
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ad

    :pswitch_d3
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ad

    :pswitch_e6
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5ad

    :pswitch_fc
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_113
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ad

    :pswitch_126
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ad

    :pswitch_139
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5ad

    :pswitch_14c
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5ad

    :pswitch_15f
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5ad

    :pswitch_172
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5ad

    :pswitch_185
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5ad

    :pswitch_198
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5ad

    :pswitch_1ab
    invoke-direct {p0, p1, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5ad

    :pswitch_1be
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v5, v3, v2}, Lcom/android/framework/protobuf/MessageSchema;->writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_5ad

    :pswitch_1cb
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_1e3
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_1f7
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_20b
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_21f
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_233
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_247
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_25b
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_26f
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_283
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_297
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2ab
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2bf
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2d3
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2e7
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v3, v7, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_2fb
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_30f
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_323
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_337
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_34b
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_35f
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_373
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ad

    :pswitch_387
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v7

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_39f
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ad

    :pswitch_3b3
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_3c7
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_3db
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_3ef
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_403
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_417
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_42b
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_43f
    nop

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    goto/16 :goto_5ad

    :pswitch_453
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_46b
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ad

    :pswitch_47e
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ad

    :pswitch_491
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ad

    :pswitch_4a4
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ad

    :pswitch_4b7
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ad

    :pswitch_4ca
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ad

    :pswitch_4dd
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5ad

    :pswitch_4f3
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ad

    :pswitch_50a
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ad

    :pswitch_51d
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ad

    :pswitch_530
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5ad

    :pswitch_542
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5ad

    :pswitch_554
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto :goto_5ad

    :pswitch_566
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5ad

    :pswitch_578
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5ad

    :pswitch_58a
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5ad

    :pswitch_59c
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5ad

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    :cond_5ad
    :goto_5ad
    add-int/lit8 v2, v2, -0x3

    goto/16 :goto_27

    :cond_5b1
    :goto_5b1
    if-eqz v1, :cond_5c8

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_5c6

    :cond_5c5
    move-object v2, v3

    :goto_5c6
    move-object v1, v2

    goto :goto_5b1

    :cond_5c8
    return-void

    nop

    :pswitch_data_5ca
    .packed-switch 0x0
        :pswitch_59c
        :pswitch_58a
        :pswitch_578
        :pswitch_566
        :pswitch_554
        :pswitch_542
        :pswitch_530
        :pswitch_51d
        :pswitch_50a
        :pswitch_4f3
        :pswitch_4dd
        :pswitch_4ca
        :pswitch_4b7
        :pswitch_4a4
        :pswitch_491
        :pswitch_47e
        :pswitch_46b
        :pswitch_453
        :pswitch_43f
        :pswitch_42b
        :pswitch_417
        :pswitch_403
        :pswitch_3ef
        :pswitch_3db
        :pswitch_3c7
        :pswitch_3b3
        :pswitch_39f
        :pswitch_387
        :pswitch_373
        :pswitch_35f
        :pswitch_34b
        :pswitch_337
        :pswitch_323
        :pswitch_30f
        :pswitch_2fb
        :pswitch_2e7
        :pswitch_2d3
        :pswitch_2bf
        :pswitch_2ab
        :pswitch_297
        :pswitch_283
        :pswitch_26f
        :pswitch_25b
        :pswitch_247
        :pswitch_233
        :pswitch_21f
        :pswitch_20b
        :pswitch_1f7
        :pswitch_1e3
        :pswitch_1cb
        :pswitch_1be
        :pswitch_1ab
        :pswitch_198
        :pswitch_185
        :pswitch_172
        :pswitch_15f
        :pswitch_14c
        :pswitch_139
        :pswitch_126
        :pswitch_113
        :pswitch_fc
        :pswitch_e6
        :pswitch_d3
        :pswitch_c0
        :pswitch_ad
        :pswitch_9a
        :pswitch_87
        :pswitch_74
        :pswitch_5c
    .end packed-switch
.end method

.method private writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-direct {p0, p4}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v1, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/android/framework/protobuf/Writer;->writeMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_11

    :cond_b
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p3, p1, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    :goto_11
    return-void
.end method

.method private writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x0

    if-ge v1, v0, :cond_11

    invoke-direct {p0, p1, p2, v1}, Lcom/android/framework/protobuf/MessageSchema;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    add-int/lit8 v1, v1, 0x3

    goto :goto_4

    :cond_11
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    return v2

    :cond_24
    iget-boolean v2, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v4, p2}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/framework/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    :cond_39
    const/4 v2, 0x1

    return v2
.end method

.method getSchemaSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/MessageSchema;->getSerializedSizeProto3(Ljava/lang/Object;)I

    move-result v0

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/MessageSchema;->getSerializedSizeProto2(Ljava/lang/Object;)I

    move-result v0

    :goto_d
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_27b

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-static {v3}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-static {v3}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_29c

    goto/16 :goto_277

    :pswitch_1c
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    move v0, v8

    goto/16 :goto_277

    :pswitch_30
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_44
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_54
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_68
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_78
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_88
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_98
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_ac
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    move v0, v8

    goto/16 :goto_277

    :pswitch_c0
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_d6
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Lcom/android/framework/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_ea
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_fa
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_10e
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_11e
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_132
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_146
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_15a
    invoke-direct {p0, p1, v4, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_277

    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_172
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_180
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_18e
    const/16 v7, 0x25

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_19a

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_19a
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    move v0, v9

    goto/16 :goto_277

    :pswitch_1a0
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1ae
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1b8
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1c6
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1d0
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1da
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1e4
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_1f2
    const/16 v7, 0x25

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1fe

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1fe
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    move v0, v9

    goto/16 :goto_277

    :pswitch_204
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_277

    :pswitch_214
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Lcom/android/framework/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_221
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_22a
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_237
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_240
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_24d
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_25a
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_277

    :pswitch_267
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    :cond_277
    :goto_277
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_27b
    mul-int/lit8 v2, v0, 0x35

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_29a

    mul-int/lit8 v0, v2, 0x35

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v3, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/framework/protobuf/FieldSet;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    :cond_29a
    return v2

    nop

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_267
        :pswitch_25a
        :pswitch_24d
        :pswitch_240
        :pswitch_237
        :pswitch_22a
        :pswitch_221
        :pswitch_214
        :pswitch_204
        :pswitch_1f2
        :pswitch_1e4
        :pswitch_1da
        :pswitch_1d0
        :pswitch_1c6
        :pswitch_1b8
        :pswitch_1ae
        :pswitch_1a0
        :pswitch_18e
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_180
        :pswitch_172
        :pswitch_15a
        :pswitch_146
        :pswitch_132
        :pswitch_11e
        :pswitch_10e
        :pswitch_fa
        :pswitch_ea
        :pswitch_d6
        :pswitch_c0
        :pswitch_ac
        :pswitch_98
        :pswitch_88
        :pswitch_78
        :pswitch_68
        :pswitch_54
        :pswitch_44
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_95

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-nez v10, :cond_33

    iget-object v10, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v11, v3, 0x2

    aget v8, v10, v11

    const v10, 0xfffff

    and-int/2addr v10, v8

    ushr-int/lit8 v11, v8, 0x14

    shl-int v9, v4, v11

    if-eq v10, v0, :cond_33

    move v0, v10

    sget-object v4, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v4, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_33
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->isRequired(I)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-direct {p0, p1, v3, v1, v9}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v4

    if-nez v4, :cond_40

    return v5

    :cond_40
    invoke-static {v7}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/16 v10, 0x9

    if-eq v4, v10, :cond_80

    const/16 v10, 0x11

    if-eq v4, v10, :cond_80

    const/16 v10, 0x1b

    if-eq v4, v10, :cond_79

    const/16 v10, 0x3c

    if-eq v4, v10, :cond_68

    const/16 v10, 0x44

    if-eq v4, v10, :cond_68

    const/16 v10, 0x31

    if-eq v4, v10, :cond_79

    const/16 v10, 0x32

    if-eq v4, v10, :cond_61

    goto :goto_91

    :cond_61
    invoke-direct {p0, p1, v7, v3}, Lcom/android/framework/protobuf/MessageSchema;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_91

    return v5

    :cond_68
    invoke-direct {p0, p1, v6, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/android/framework/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_91

    return v5

    :cond_79
    invoke-direct {p0, p1, v7, v3}, Lcom/android/framework/protobuf/MessageSchema;->isListInitialized(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_91

    return v5

    :cond_80
    invoke-direct {p0, p1, v3, v1, v9}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;III)Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/android/framework/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/android/framework/protobuf/Schema;)Z

    move-result v4

    if-nez v4, :cond_91

    return v5

    :cond_91
    :goto_91
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_95
    iget-boolean v2, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_a6

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a6

    return v5

    :cond_a6
    return v4
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_2
    iget v1, p0, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_22

    :cond_19
    iget-object v4, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v4, v3}, Lcom/android/framework/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_25
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    array-length v0, v0

    iget v1, p0, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    :goto_2a
    if-ge v1, v0, :cond_39

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_39
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    :cond_47
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_e

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_21

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/framework/protobuf/MessageSchema;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_e
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeExtensions(Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    return-void

    :cond_21
    const/4 v0, 0x0

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p5}, Lcom/android/framework/protobuf/MessageSchema;->parseProto3Message(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    goto :goto_12

    :cond_8
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/framework/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    :goto_12
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->newInstanceSchema:Lcom/android/framework/protobuf/NewInstanceSchema;

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method parseProto2Message(Ljava/lang/Object;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v8, v0

    move v7, v1

    move/from16 v0, p3

    :goto_17
    if-ge v0, v13, :cond_6a0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_28

    invoke-static {v0, v12, v1, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v0, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move v2, v0

    move v5, v1

    goto :goto_2a

    :cond_28
    move v2, v0

    move v5, v1

    :goto_2a
    ushr-int/lit8 v1, v2, 0x3

    and-int/lit8 v0, v2, 0x7

    if-le v1, v3, :cond_38

    div-int/lit8 v6, v4, 0x3

    invoke-direct {v15, v1, v6}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v4

    move v6, v4

    goto :goto_3d

    :cond_38
    invoke-direct {v15, v1}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v4

    move v6, v4

    :goto_3d
    move/from16 v16, v1

    const/4 v3, -0x1

    if-ne v6, v3, :cond_52

    const/4 v3, 0x0

    move v15, v0

    move/from16 v24, v1

    move/from16 v21, v2

    move/from16 v19, v3

    move/from16 v18, v5

    move/from16 v17, v7

    move-object/from16 v32, v10

    goto/16 :goto_63d

    :cond_52
    iget-object v3, v15, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v4, v6, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v3

    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v11

    move/from16 v17, v2

    const/16 v2, 0x11

    move/from16 v18, v4

    if-gt v3, v2, :cond_4c2

    iget-object v2, v15, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v19, v6, 0x2

    aget v19, v2, v19

    ushr-int/lit8 v2, v19, 0x14

    const/4 v4, 0x1

    shl-int v21, v4, v2

    const v2, 0xfffff

    and-int v2, v19, v2

    if-eq v2, v8, :cond_8f

    const/4 v4, -0x1

    if-eq v8, v4, :cond_84

    move/from16 p3, v5

    int-to-long v4, v8

    invoke-virtual {v10, v14, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_86

    :cond_84
    move/from16 p3, v5

    :goto_86
    move v4, v2

    move v8, v4

    int-to-long v4, v2

    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v7, v4

    goto :goto_91

    :cond_8f
    move/from16 p3, v5

    :goto_91
    const/4 v4, 0x5

    packed-switch v3, :pswitch_data_6f0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    goto/16 :goto_4b3

    :pswitch_ad
    const/4 v4, 0x3

    if-ne v0, v4, :cond_105

    shl-int/lit8 v4, v1, 0x3

    or-int/lit8 v20, v4, 0x4

    nop

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v4

    move v5, v0

    move-object v0, v4

    move/from16 v24, v1

    move-object/from16 v1, p2

    move/from16 v4, v17

    move/from16 v17, v2

    move/from16 v2, p3

    move/from16 v25, v8

    move v8, v3

    move/from16 v3, p4

    move/from16 v26, v8

    move/from16 v27, v18

    move v8, v4

    move/from16 v4, v20

    move v13, v5

    move/from16 v18, v8

    move/from16 v8, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v7, v21

    if-nez v1, :cond_e6

    iget-object v1, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_f4

    :cond_e6
    nop

    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_f4
    or-int v7, v7, v21

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_17

    :cond_105
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    move/from16 v30, v27

    move/from16 v27, v6

    move-object v6, v10

    move-wide v10, v11

    move-object/from16 v12, p2

    move/from16 v33, v13

    move-object v13, v9

    move/from16 v9, v33

    goto/16 :goto_4b3

    :pswitch_123
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move/from16 v27, v18

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    if-nez v13, :cond_15f

    move-wide v4, v11

    move-object/from16 v12, p2

    invoke-static {v12, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-wide v0, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-object/from16 v28, v10

    move-wide v10, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move v0, v8

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move-object/from16 v10, v28

    goto/16 :goto_17

    :cond_15f
    move-object/from16 v28, v10

    move-wide v10, v11

    move-object/from16 v12, p2

    move/from16 v30, v27

    move/from16 v27, v6

    move-object/from16 v6, v28

    move/from16 v33, v13

    move-object v13, v9

    move/from16 v9, v33

    goto/16 :goto_4b3

    :pswitch_171
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object/from16 v28, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    if-nez v13, :cond_1a6

    invoke-static {v12, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    move-object/from16 v5, v28

    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    goto/16 :goto_17

    :cond_1a6
    move-object/from16 v5, v28

    move/from16 v30, v27

    move/from16 v27, v6

    move-object v6, v5

    move/from16 v33, v13

    move-object v13, v9

    move/from16 v9, v33

    goto/16 :goto_4b3

    :pswitch_1b4
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v18, v17

    move/from16 v17, v2

    if-nez v13, :cond_211

    invoke-static {v12, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v2

    if-eqz v2, :cond_1fb

    invoke-interface {v2, v1}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_1de

    move/from16 v9, v18

    goto :goto_1fd

    :cond_1de
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v3

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move/from16 v9, v18

    invoke-virtual {v3, v9, v4}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move v2, v9

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v9, p6

    goto/16 :goto_17

    :cond_1fb
    move/from16 v9, v18

    :goto_1fd
    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move v2, v9

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v9, p6

    goto/16 :goto_17

    :cond_211
    move/from16 v9, v18

    move v9, v13

    move/from16 v30, v27

    move-object/from16 v13, p6

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_4b3

    :pswitch_21d
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v9, v17

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v17, v2

    const/4 v0, 0x2

    if-ne v13, v0, :cond_251

    move-object/from16 v2, p6

    invoke-static {v12, v8, v2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_17

    :cond_251
    move-object/from16 v2, p6

    move/from16 v18, v9

    move v9, v13

    move/from16 v30, v27

    move-object v13, v2

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_4b3

    :pswitch_25e
    move v13, v0

    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    const/4 v0, 0x2

    if-ne v13, v0, :cond_2ac

    nop

    invoke-direct {v15, v6}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    move v3, v13

    move/from16 v13, p4

    invoke-static {v0, v12, v8, v13, v2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v7, v21

    if-nez v1, :cond_28d

    iget-object v1, v2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_29b

    :cond_28d
    nop

    invoke-virtual {v5, v14, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_29b
    or-int v7, v7, v21

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_17

    :cond_2ac
    move v3, v13

    move/from16 v13, p4

    move-object v13, v2

    move/from16 v18, v9

    move/from16 v30, v27

    move v9, v3

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_4b3

    :pswitch_2ba
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v3, v0

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    const/4 v0, 0x2

    if-ne v3, v0, :cond_2f9

    const/high16 v0, 0x20000000

    move/from16 v1, v27

    and-int/2addr v0, v1

    if-nez v0, :cond_2df

    invoke-static {v12, v8, v2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_2e3

    :cond_2df
    invoke-static {v12, v8, v2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_2e3
    iget-object v4, v2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v5, v14, v10, v11, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v7, v7, v21

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_17

    :cond_2f9
    move/from16 v1, v27

    move/from16 v30, v1

    move-object v13, v2

    move/from16 v27, v6

    move/from16 v18, v9

    move v9, v3

    move-object v6, v5

    goto/16 :goto_4b3

    :pswitch_306
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v1, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v3, v0

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    if-nez v3, :cond_347

    invoke-static {v12, v8, v2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 p3, v0

    move/from16 v27, v1

    iget-wide v0, v2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v28, 0x0

    cmp-long v0, v0, v28

    if-eqz v0, :cond_330

    const/4 v4, 0x1

    goto :goto_331

    :cond_330
    const/4 v4, 0x0

    :goto_331
    invoke-static {v14, v10, v11, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    or-int v7, v7, v21

    move/from16 v0, p3

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_17

    :cond_347
    move/from16 v27, v1

    move-object v13, v2

    move/from16 v18, v9

    move/from16 v30, v27

    move v9, v3

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_4b3

    :pswitch_354
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v3, v0

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    if-ne v3, v4, :cond_386

    invoke-static {v12, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v5, v14, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    or-int v7, v7, v21

    move/from16 v11, p5

    move-object v10, v5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v33, v9

    move-object v9, v2

    move/from16 v2, v33

    goto/16 :goto_17

    :cond_386
    move-object v13, v2

    move/from16 v18, v9

    move/from16 v30, v27

    move v9, v3

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_4b3

    :pswitch_391
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v25, v8

    move-object v5, v10

    move-wide v10, v11

    move/from16 v27, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v3, v0

    move/from16 v33, v17

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v9, v33

    const/4 v0, 0x1

    if-ne v3, v0, :cond_3d6

    invoke-static {v12, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v22

    move-object v0, v5

    move/from16 v4, v27

    move-object/from16 v1, p1

    move-object v13, v2

    move/from16 v18, v9

    move v9, v3

    move-wide v2, v10

    move/from16 v30, v4

    move/from16 v27, v6

    move-object v6, v5

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    or-int v7, v7, v21

    move/from16 v11, p5

    move-object v10, v6

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_17

    :cond_3d6
    move-object v13, v2

    move/from16 v18, v9

    move/from16 v30, v27

    move v9, v3

    move/from16 v27, v6

    move-object v6, v5

    goto/16 :goto_4b3

    :pswitch_3e1
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    if-nez v9, :cond_4b3

    invoke-static {v12, v8, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v6, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v7, v7, v21

    move/from16 v11, p5

    move-object v10, v6

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_17

    :pswitch_414
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    if-nez v9, :cond_4b3

    invoke-static {v12, v8, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    iget-wide v4, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v6

    move-object/from16 v1, p1

    move-wide v2, v10

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v7, v7, v21

    move/from16 v11, p5

    move-object v10, v6

    move v0, v8

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_17

    :pswitch_44c
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    if-ne v9, v4, :cond_4b3

    invoke-static {v12, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v10, v11, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    or-int v7, v7, v21

    move/from16 v11, p5

    move-object v10, v6

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_17

    :pswitch_47f
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move/from16 v8, p3

    move v9, v0

    move/from16 v18, v17

    move/from16 v17, v2

    const/4 v0, 0x1

    if-ne v9, v0, :cond_4b3

    invoke-static {v12, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v10, v11, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v8, 0x8

    or-int v7, v7, v21

    move/from16 v11, p5

    move-object v10, v6

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v8, v25

    move/from16 v4, v27

    move/from16 v13, p4

    goto/16 :goto_17

    :cond_4b3
    :goto_4b3
    move-object/from16 v32, v6

    move/from16 v17, v7

    move v15, v9

    move/from16 v21, v18

    move/from16 v19, v27

    move/from16 v18, v8

    move/from16 v8, v25

    goto/16 :goto_63d

    :cond_4c2
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v13, v9

    move-object v6, v10

    move-wide v10, v11

    move/from16 v30, v18

    move-object/from16 v12, p2

    move v9, v0

    move v8, v5

    move/from16 v18, v17

    const/16 v0, 0x1b

    move/from16 v5, v26

    if-ne v5, v0, :cond_53f

    const/4 v0, 0x2

    if-ne v9, v0, :cond_52e

    invoke-virtual {v6, v14, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_500

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    nop

    if-nez v1, :cond_4f4

    const/16 v2, 0xa

    goto :goto_4f6

    :cond_4f4
    mul-int/lit8 v2, v1, 0x2

    :goto_4f6
    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v6, v14, v10, v11, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v17, v0

    goto :goto_502

    :cond_500
    move-object/from16 v17, v0

    :goto_502
    nop

    move/from16 v4, v27

    invoke-direct {v15, v4}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v18

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-wide/from16 v21, v10

    move v10, v5

    move-object/from16 v5, v17

    move-object v11, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object v10, v11

    move-object v9, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v8, v25

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_52e
    move-wide/from16 v21, v10

    move/from16 v19, v27

    move v10, v5

    move-object v11, v6

    move/from16 v17, v7

    move v15, v9

    move-object/from16 v32, v11

    move/from16 v21, v18

    move/from16 v18, v8

    goto/16 :goto_5f6

    :cond_53f
    move-wide/from16 v21, v10

    move/from16 v19, v27

    move v10, v5

    move-object v11, v6

    const/16 v0, 0x31

    if-gt v10, v0, :cond_5a4

    move v6, v8

    move/from16 v5, v30

    int-to-long v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v26, v3

    move v3, v8

    const/16 v17, -0x1

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v18

    move v15, v6

    move/from16 v6, v24

    move/from16 v17, v7

    move v7, v9

    move/from16 p3, v10

    move/from16 v10, v18

    move/from16 v18, v8

    move/from16 v8, v19

    move/from16 v31, v9

    move-wide/from16 v28, v21

    move/from16 v21, v10

    move-wide/from16 v9, v26

    move-object/from16 v32, v11

    move/from16 v11, p3

    move-wide/from16 v12, v28

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/android/framework/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_59c

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v19

    move/from16 v2, v21

    move/from16 v8, v25

    move-object/from16 v10, v32

    goto/16 :goto_17

    :cond_59c
    move/from16 v18, v0

    move/from16 v8, v25

    move/from16 v15, v31

    goto/16 :goto_63d

    :cond_5a4
    move/from16 v17, v7

    move/from16 v31, v9

    move/from16 p3, v10

    move-object/from16 v32, v11

    move-wide/from16 v28, v21

    move/from16 v23, v30

    move/from16 v21, v18

    move/from16 v18, v8

    const/16 v0, 0x32

    move/from16 v14, p3

    if-ne v14, v0, :cond_5f9

    move/from16 v15, v31

    const/4 v0, 0x2

    if-ne v15, v0, :cond_5f6

    move/from16 v9, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v28

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/framework/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v9, :cond_5f1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v19

    move/from16 v2, v21

    move/from16 v8, v25

    move-object/from16 v10, v32

    goto/16 :goto_17

    :cond_5f1
    move/from16 v18, v0

    move/from16 v8, v25

    goto :goto_63d

    :cond_5f6
    :goto_5f6
    move/from16 v8, v25

    goto :goto_63d

    :cond_5f9
    move/from16 v15, v31

    move/from16 v13, v18

    nop

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, p4

    move/from16 v5, v21

    move/from16 v6, v24

    move v7, v15

    move/from16 v8, v23

    move v9, v14

    move-wide/from16 v10, v28

    move/from16 v12, v19

    move/from16 p3, v14

    move v14, v13

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v14, :cond_639

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v19

    move/from16 v2, v21

    move/from16 v8, v25

    move-object/from16 v10, v32

    goto/16 :goto_17

    :cond_639
    move/from16 v18, v0

    move/from16 v8, v25

    :goto_63d
    move/from16 v9, p5

    move/from16 v10, v21

    if-ne v10, v9, :cond_654

    if-eqz v9, :cond_654

    move-object/from16 v11, p0

    move-object/from16 v12, p6

    move v2, v10

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v0, v18

    move/from16 v4, v19

    goto/16 :goto_6a9

    :cond_654
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_678

    move-object/from16 v12, p6

    iget-object v0, v12, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_67a

    iget-object v5, v11, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    iget-object v6, v11, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    move v0, v10

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_68c

    :cond_678
    move-object/from16 v12, p6

    :cond_67a
    nop

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v10

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_68c
    move-object/from16 v14, p1

    move/from16 v13, p4

    move v2, v10

    move-object v15, v11

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v19

    move-object/from16 v10, v32

    move v11, v9

    move-object v9, v12

    move-object/from16 v12, p2

    goto/16 :goto_17

    :cond_6a0
    move/from16 v17, v7

    move/from16 v25, v8

    move-object v12, v9

    move-object/from16 v32, v10

    move v9, v11

    move-object v11, v15

    :goto_6a9
    const/4 v1, -0x1

    if-eq v8, v1, :cond_6b5

    int-to-long v5, v8

    move-object/from16 v1, p1

    move-object/from16 v10, v32

    invoke-virtual {v10, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6b9

    :cond_6b5
    move-object/from16 v1, p1

    move-object/from16 v10, v32

    :goto_6b9
    const/4 v5, 0x0

    iget v6, v11, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_6bc
    iget v13, v11, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v6, v13, :cond_6d0

    iget-object v13, v11, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v13, v13, v6

    iget-object v14, v11, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v11, v1, v13, v5, v14}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    move-object v5, v13

    check-cast v5, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6bc

    :cond_6d0
    if-eqz v5, :cond_6d7

    iget-object v6, v11, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v6, v1, v5}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d7
    if-nez v9, :cond_6e3

    move/from16 v6, p4

    if-ne v0, v6, :cond_6de

    goto :goto_6e9

    :cond_6de
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    :cond_6e3
    move/from16 v6, p4

    if-gt v0, v6, :cond_6ea

    if-ne v2, v9, :cond_6ea

    :goto_6e9
    return v0

    :cond_6ea
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    nop

    :pswitch_data_6f0
    .packed-switch 0x0
        :pswitch_47f
        :pswitch_44c
        :pswitch_414
        :pswitch_414
        :pswitch_3e1
        :pswitch_391
        :pswitch_354
        :pswitch_306
        :pswitch_2ba
        :pswitch_25e
        :pswitch_21d
        :pswitch_3e1
        :pswitch_1b4
        :pswitch_354
        :pswitch_391
        :pswitch_171
        :pswitch_123
        :pswitch_ad
    .end packed-switch
.end method

.method public writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto :goto_17

    :cond_c
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_14

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto :goto_17

    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    :goto_17
    return-void
.end method
