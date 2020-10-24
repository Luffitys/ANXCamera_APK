.class public abstract Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;
.super Lcom/miui/internal/util/ClassProxy;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Landroid/content/res/ResourcesImpl;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public abstract getAssets(Landroid/content/res/ResourcesImpl;)Landroid/content/res/AssetManager;
.end method
