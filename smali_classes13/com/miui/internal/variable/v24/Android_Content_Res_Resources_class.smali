.class public Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;
.super Lcom/miui/internal/variable/v21/Android_Content_Res_Resources_class;
.source "Android_Content_Res_Resources_class.java"


# static fields
.field protected static mResourcesImpl:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mResourcesImpl:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/v21/Android_Content_Res_Resources_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .registers 1

    return-void
.end method

.method protected handle()V
    .registers 1

    return-void
.end method

.method public setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .registers 7

    const-string v0, "mAssets"

    :try_start_2
    sget-object v1, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mResourcesImpl:Lmiui/reflect/Field;

    if-nez v1, :cond_20

    const-class v1, Landroid/content/res/Resources;

    const-string v2, "mResourcesImpl"

    const-string v3, "Landroid/content/res/ResourcesImpl;"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mResourcesImpl:Lmiui/reflect/Field;

    const-string v1, "android/content/res/ResourcesImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Landroid/content/res/AssetManager;"

    invoke-static {v1, v0, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    :cond_20
    sget-object v1, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    sget-object v2, Lcom/miui/internal/variable/v24/Android_Content_Res_Resources_class;->mResourcesImpl:Lmiui/reflect/Field;

    invoke-virtual {v2, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2b} :catch_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2b} :catch_2c

    goto :goto_3d

    :catch_2c
    move-exception v1

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e

    :catch_35
    move-exception v1

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3d
    nop

    :goto_3e
    return-void
.end method
