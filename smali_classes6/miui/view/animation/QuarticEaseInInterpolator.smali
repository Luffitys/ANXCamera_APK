.class public Lmiui/view/animation/QuarticEaseInInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 2

    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    return p0
.end method
