.class final Lcom/android/framework/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/FieldInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/framework/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final cachedSizeField:Ljava/lang/reflect/Field;

.field private final enforceUtf8:Z

.field private final enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldNumber:I

.field private final mapDefaultEntry:Ljava/lang/Object;

.field private final messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final oneof:Lcom/android/framework/protobuf/OneofInfo;

.field private final oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final presenceField:Ljava/lang/reflect/Field;

.field private final presenceMask:I

.field private final required:Z

.field private final type:Lcom/android/framework/protobuf/FieldType;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/android/framework/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    iput-object p4, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    iput p2, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    iput-object p5, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceMask:I

    iput-boolean p7, p0, Lcom/android/framework/protobuf/FieldInfo;->required:Z

    iput-boolean p8, p0, Lcom/android/framework/protobuf/FieldInfo;->enforceUtf8:Z

    iput-object p9, p0, Lcom/android/framework/protobuf/FieldInfo;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    iput-object p10, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    iput-object p11, p0, Lcom/android/framework/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    iput-object p12, p0, Lcom/android/framework/protobuf/FieldInfo;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    iput-object p13, p0, Lcom/android/framework/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static checkFieldNumber(I)V
    .registers 4

    if-lez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldNumber must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Z)Lcom/android/framework/protobuf/FieldInfo;
    .registers 21

    move-object/from16 v14, p2

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v14, v0, :cond_32

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v14, v0, :cond_32

    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 20

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 21

    const-string/jumbo v0, "mapDefaultEntry"

    move-object/from16 v15, p2

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object/from16 v14, p0

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    sget-object v4, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static forOneofMemberField(ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Lcom/android/framework/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/android/framework/protobuf/FieldInfo;"
        }
    .end annotation

    move-object/from16 v14, p1

    invoke-static/range {p0 .. p0}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "fieldType"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "oneof"

    move-object/from16 v15, p2

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "oneofStoredType"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldType;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oneof is only supported for scalar fields. Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forPackedField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 21

    move-object/from16 v14, p2

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v14, v0, :cond_32

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v14, v0, :cond_32

    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 21

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 25

    move-object/from16 v14, p3

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "presenceField"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v14, :cond_3e

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_24

    move/from16 v12, p4

    goto :goto_40

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p4

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    move/from16 v12, p4

    :goto_40
    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16
.end method

.method public static forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 25

    move-object/from16 v14, p3

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "presenceField"

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v14, :cond_3e

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_24

    move/from16 v12, p4

    goto :goto_40

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p4

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    move/from16 v12, p4

    :goto_40
    new-instance v16, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v16
.end method

.method public static forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/framework/protobuf/FieldInfo;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "messageClass"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method private static isExactlyOneBitSet(I)Z
    .registers 2

    if-eqz p0, :cond_9

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static newBuilder()Lcom/android/framework/protobuf/FieldInfo$Builder;
    .registers 2

    new-instance v0, Lcom/android/framework/protobuf/FieldInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldInfo$Builder;-><init>(Lcom/android/framework/protobuf/FieldInfo$1;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/framework/protobuf/FieldInfo;)I
    .registers 4

    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    iget v1, p1, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/framework/protobuf/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldInfo;->compareTo(Lcom/android/framework/protobuf/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public getCachedSizeField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldNumber()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    return v0
.end method

.method public getListElementType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getMapDefaultEntry()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageFieldClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/4 v0, 0x0

    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_26

    :cond_24
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    :goto_26
    return-object v0
.end method

.method public getOneof()Lcom/android/framework/protobuf/OneofInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    return-object v0
.end method

.method public getOneofStoredType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    return-object v0
.end method

.method public getPresenceField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getPresenceMask()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceMask:I

    return v0
.end method

.method public getType()Lcom/android/framework/protobuf/FieldType;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method

.method public isEnforceUtf8()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldInfo;->enforceUtf8:Z

    return v0
.end method

.method public isRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldInfo;->required:Z

    return v0
.end method
