.class Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BallParams"
.end annotation


# instance fields
.field color:I

.field ctx:F

.field cty:F

.field dynamicVoiceMaxRad:F

.field dynamicVoiceMinRad:F

.field flag1:Z

.field gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

.field hasVoiceMaxRad:F

.field hasVoiceMinRad:F

.field layer:I

.field loadingMaxRad:F

.field loadingMinRad:F

.field noVoice2HasVoiceRad:F

.field noVoiceMaxRad:F

.field noVoiceMinRad:F

.field nowX:F

.field nowY:F

.field paint:Landroid/graphics/Paint;

.field rad:F

.field scale:F

.field final synthetic this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;


# direct methods
.method private constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->scale:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    return-void
.end method
