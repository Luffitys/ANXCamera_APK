.class public Landroid/renderscript/RenderScriptCacheDir;
.super Ljava/lang/Object;
.source "RenderScriptCacheDir.java"


# static fields
.field static mCacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .registers 1

    sput-object p0, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    return-void
.end method
