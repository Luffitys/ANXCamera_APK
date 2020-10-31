.class public Lmiui/graphics/CanvasUtil;
.super Ljava/lang/Object;
.source "CanvasUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static release(Landroid/graphics/Canvas;)V
    .registers 1

    invoke-virtual {p0}, Landroid/graphics/Canvas;->release()V

    return-void
.end method
