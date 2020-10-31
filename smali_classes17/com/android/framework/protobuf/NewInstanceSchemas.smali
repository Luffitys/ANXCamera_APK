.class final Lcom/android/framework/protobuf/NewInstanceSchemas;
.super Ljava/lang/Object;
.source "NewInstanceSchemas.java"


# static fields
.field private static final FULL_SCHEMA:Lcom/android/framework/protobuf/NewInstanceSchema;

.field private static final LITE_SCHEMA:Lcom/android/framework/protobuf/NewInstanceSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/framework/protobuf/NewInstanceSchemas;->loadSchemaForFullRuntime()Lcom/android/framework/protobuf/NewInstanceSchema;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/android/framework/protobuf/NewInstanceSchema;

    new-instance v0, Lcom/android/framework/protobuf/NewInstanceSchemaLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/NewInstanceSchemaLite;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/android/framework/protobuf/NewInstanceSchema;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static full()Lcom/android/framework/protobuf/NewInstanceSchema;
    .registers 1

    sget-object v0, Lcom/android/framework/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/android/framework/protobuf/NewInstanceSchema;

    return-object v0
.end method

.method static lite()Lcom/android/framework/protobuf/NewInstanceSchema;
    .registers 1

    sget-object v0, Lcom/android/framework/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/android/framework/protobuf/NewInstanceSchema;

    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Lcom/android/framework/protobuf/NewInstanceSchema;
    .registers 3

    :try_start_0
    const-string v0, "com.android.framework.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/NewInstanceSchema;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method
