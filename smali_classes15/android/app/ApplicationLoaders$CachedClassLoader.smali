.class Landroid/app/ApplicationLoaders$CachedClassLoader;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationLoaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedClassLoader"
.end annotation


# instance fields
.field loader:Ljava/lang/ClassLoader;

.field sharedLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ApplicationLoaders$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ApplicationLoaders$CachedClassLoader;-><init>()V

    return-void
.end method
