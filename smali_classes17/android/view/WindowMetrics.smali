.class public final Landroid/view/WindowMetrics;
.super Ljava/lang/Object;
.source "WindowMetrics.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mWindowInsets:Landroid/view/WindowInsets;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowMetrics;->mBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Landroid/view/WindowMetrics;->mWindowInsets:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowMetrics;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowInsets()Landroid/view/WindowInsets;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowMetrics;->mWindowInsets:Landroid/view/WindowInsets;

    return-object v0
.end method
