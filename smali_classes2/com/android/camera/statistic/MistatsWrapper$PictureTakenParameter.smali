.class public Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;
.super Ljava/lang/Object;
.source "MistatsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/statistic/MistatsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureTakenParameter"
.end annotation


# instance fields
.field public aiSceneName:Ljava/lang/String;

.field public beautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public burst:Z

.field public isASDBacklitTip:Z

.field public isASDPortraitTip:Z

.field public isEnteringMoon:Z

.field public isSelectMoonMode:Z

.field public isSuperNightInCaptureMode:Z

.field public location:Z

.field public takenNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
