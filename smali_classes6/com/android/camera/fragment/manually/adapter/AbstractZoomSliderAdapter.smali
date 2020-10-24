.class public abstract Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.super Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;
.source ""

# interfaces
.implements Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;


# instance fields
.field protected mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isEnable()Z
.end method

.method public abstract mapPositionToValue(F)Ljava/lang/Object;
.end method

.method public abstract mapValueToPosition(Ljava/lang/Object;)F
.end method

.method public abstract setEnable(Z)V
.end method
