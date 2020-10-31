.class public final enum Lcom/android/framework/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/framework/protobuf/FieldType;

.field public static final enum BOOL:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BOOL_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BOOL_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BYTES:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BYTES_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum DOUBLE:Lcom/android/framework/protobuf/FieldType;

.field public static final enum DOUBLE_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Lcom/android/framework/protobuf/FieldType;

.field public static final enum ENUM_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum ENUM_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FLOAT:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FLOAT_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FLOAT_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum GROUP:Lcom/android/framework/protobuf/FieldType;

.field public static final enum GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum MAP:Lcom/android/framework/protobuf/FieldType;

.field public static final enum MESSAGE:Lcom/android/framework/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum STRING:Lcom/android/framework/protobuf/FieldType;

.field public static final enum STRING_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field private static final VALUES:[Lcom/android/framework/protobuf/FieldType;


# instance fields
.field private final collection:Lcom/android/framework/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Lcom/android/framework/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v6, Lcom/android/framework/protobuf/FieldType;

    sget-object v4, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v5, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v6, Lcom/android/framework/protobuf/FieldType;->DOUBLE:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FLOAT:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT64:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT64:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT32:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED64:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED32:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BOOL:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->STRING:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BYTES:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT32:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->ENUM:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED32:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED64:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT32:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT64:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->STRING_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BYTES_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->VOID:Lcom/android/framework/protobuf/JavaType;

    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    const/16 v1, 0x33

    new-array v1, v1, [Lcom/android/framework/protobuf/FieldType;

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->DOUBLE:Lcom/android/framework/protobuf/FieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->FLOAT:Lcom/android/framework/protobuf/FieldType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->INT64:Lcom/android/framework/protobuf/FieldType;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->UINT64:Lcom/android/framework/protobuf/FieldType;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->INT32:Lcom/android/framework/protobuf/FieldType;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->FIXED64:Lcom/android/framework/protobuf/FieldType;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->FIXED32:Lcom/android/framework/protobuf/FieldType;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->BOOL:Lcom/android/framework/protobuf/FieldType;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->STRING:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->MESSAGE:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->BYTES:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->UINT32:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->ENUM:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SFIXED32:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SFIXED64:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SINT32:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SINT64:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->GROUP:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->INT64_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->INT32_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->STRING_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->BYTES_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x21

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x22

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x23

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x24

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x25

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x26

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x27

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x28

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x29

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x30

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    const/16 v4, 0x31

    aput-object v2, v1, v4

    const/16 v2, 0x32

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/framework/protobuf/FieldType;->$VALUES:[Lcom/android/framework/protobuf/FieldType;

    new-array v0, v3, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-static {}, Lcom/android/framework/protobuf/FieldType;->values()[Lcom/android/framework/protobuf/FieldType;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/android/framework/protobuf/FieldType;

    sput-object v1, Lcom/android/framework/protobuf/FieldType;->VALUES:[Lcom/android/framework/protobuf/FieldType;

    array-length v1, v0

    :goto_4c2
    if-ge v3, v1, :cond_4cf

    aget-object v2, v0, v3

    sget-object v4, Lcom/android/framework/protobuf/FieldType;->VALUES:[Lcom/android/framework/protobuf/FieldType;

    iget v5, v2, Lcom/android/framework/protobuf/FieldType;->id:I

    aput-object v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c2

    :cond_4cf
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/framework/protobuf/FieldType$Collection;",
            "Lcom/android/framework/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/framework/protobuf/FieldType;->id:I

    iput-object p4, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    iput-object p5, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    sget-object p1, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    invoke-virtual {p4}, Lcom/android/framework/protobuf/FieldType$Collection;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    if-eq p1, p2, :cond_1b

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_29

    :cond_1b
    invoke-virtual {p5}, Lcom/android/framework/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_29

    :cond_22
    invoke-virtual {p5}, Lcom/android/framework/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    nop

    :goto_29
    const/4 p1, 0x0

    sget-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    if-ne p4, v1, :cond_3f

    sget-object v1, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p5}, Lcom/android/framework/protobuf/JavaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_3f

    if-eq v1, p2, :cond_3f

    const/4 p2, 0x3

    if-eq v1, p2, :cond_3f

    const/4 p1, 0x1

    nop

    :cond_3f
    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldType;->primitiveScalar:Z

    return-void
.end method

.method public static forId(I)Lcom/android/framework/protobuf/FieldType;
    .registers 3

    if-ltz p0, :cond_b

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->VALUES:[Lcom/android/framework/protobuf/FieldType;

    array-length v1, v0

    if-lt p0, v1, :cond_8

    goto :goto_b

    :cond_8
    aget-object v0, v0, p0

    return-object v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_20

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_20

    return-object v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_23
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3d

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3d

    return-object v1

    :cond_3d
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    :goto_0
    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_84

    invoke-static {p0}, Lcom/android/framework/protobuf/FieldType;->getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_66

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    :goto_15
    array-length v4, v2

    if-ge v3, v4, :cond_5d

    aget-object v4, v2, v3

    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_5a

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v6, p1

    array-length v7, v5

    if-ne v6, v7, :cond_52

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_28
    array-length v8, v5

    if-ge v7, v8, :cond_38

    aget-object v8, v5, v7

    if-ne v4, v8, :cond_35

    aget-object v8, p1, v7

    aput-object v8, v2, v3

    const/4 v6, 0x1

    goto :goto_38

    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_38
    :goto_38
    if-eqz v6, :cond_3b

    goto :goto_5a

    :cond_3b
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find replacement for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_52
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Type array mismatch"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_5d
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object p1, v2

    move-object p0, v3

    goto :goto_0

    :cond_66
    sget-object p1, Lcom/android/framework/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    :goto_6d
    if-ge v1, v3, :cond_7e

    aget-object v4, v2, v1

    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7b

    move-object p0, v4

    goto :goto_0

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_7e
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_0

    :cond_84
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8b

    aget-object v0, p1, v1

    return-object v0

    :cond_8b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to identify parameter type for List<T>"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidForList(Ljava/lang/reflect/Field;)Z
    .registers 8

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    return v1

    :cond_12
    sget-object v1, Lcom/android/framework/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_26

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_26
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldType;->getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Class;

    if-nez v4, :cond_30

    const/4 v4, 0x1

    return v4

    :cond_30
    iget-object v4, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    return v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/FieldType;
    .registers 2

    const-class v0, Lcom/android/framework/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method

.method public static values()[Lcom/android/framework/protobuf/FieldType;
    .registers 1

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->$VALUES:[Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/android/framework/protobuf/JavaType;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    return-object v0
.end method

.method public id()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/FieldType;->id:I

    return v0
.end method

.method public isList()Z
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldType$Collection;->isList()Z

    move-result v0

    return v0
.end method

.method public isMap()Z
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPacked()Z
    .registers 3

    sget-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveScalar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldType;->primitiveScalar:Z

    return v0
.end method

.method public isScalar()Z
    .registers 3

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .registers 4

    sget-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FieldType;->isValidForList(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
