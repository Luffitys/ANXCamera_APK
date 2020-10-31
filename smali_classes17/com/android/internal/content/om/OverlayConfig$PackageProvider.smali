.class public interface abstract Lcom/android/internal/content/om/OverlayConfig$PackageProvider;
.super Ljava/lang/Object;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageProvider"
.end annotation


# virtual methods
.method public abstract forEachPackage(Ljava/util/function/BiConsumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/content/pm/parsing/ParsingPackageRead;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
