.class final Lcom/android/framework/protobuf/ExtensionSchemas;
.super Ljava/lang/Object;
.source "ExtensionSchemas.java"


# static fields
.field private static final FULL_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LITE_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/framework/protobuf/ExtensionSchemaLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ExtensionSchemaLite;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->loadSchemaForFullRuntime()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static full()Lcom/android/framework/protobuf/ExtensionSchema;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static lite()Lcom/android/framework/protobuf/ExtensionSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;

    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Lcom/android/framework/protobuf/ExtensionSchema;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.android.framework.protobuf.ExtensionSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/ExtensionSchema;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method
