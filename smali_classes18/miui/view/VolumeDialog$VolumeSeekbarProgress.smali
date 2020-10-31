.class Lmiui/view/VolumeDialog$VolumeSeekbarProgress;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeSeekbarProgress"
.end annotation


# instance fields
.field normalProgress:I

.field silentProgress:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->normalProgress:I

    iput p2, p0, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->silentProgress:I

    return-void
.end method

.method synthetic constructor <init>(IILmiui/view/VolumeDialog$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;-><init>(II)V

    return-void
.end method
