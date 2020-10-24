.class public Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mIsVideo:Z

.field public mType:Ljava/lang/String;

.field public mTypeDesc:Ljava/lang/String;

.field public mVideoCover:I

.field public mVideoDesc:Ljava/lang/String;

.field public mVideoId:I


# direct methods
.method public constructor <init>(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mIsVideo:Z

    iput p2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoId:I

    iput-object p3, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoDesc:Ljava/lang/String;

    iput p4, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoCover:I

    iput-object p5, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mType:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mTypeDesc:Ljava/lang/String;

    return-void
.end method
