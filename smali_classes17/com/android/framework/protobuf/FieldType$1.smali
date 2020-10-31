.class synthetic Lcom/android/framework/protobuf/FieldType$1;
.super Ljava/lang/Object;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protobuf$FieldType$Collection:[I

.field static final synthetic $SwitchMap$com$google$protobuf$JavaType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/android/framework/protobuf/JavaType;->values()[Lcom/android/framework/protobuf/JavaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/JavaType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v3, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/JavaType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v4, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/JavaType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    invoke-static {}, Lcom/android/framework/protobuf/FieldType$Collection;->values()[Lcom/android/framework/protobuf/FieldType$Collection;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    :try_start_37
    sget-object v4, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/FieldType$Collection;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-exception v1

    :goto_41
    :try_start_41
    sget-object v1, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    sget-object v3, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/FieldType$Collection;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v0

    :goto_4d
    :try_start_4d
    sget-object v0, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    sget-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType$Collection;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception v0

    :goto_59
    return-void
.end method
