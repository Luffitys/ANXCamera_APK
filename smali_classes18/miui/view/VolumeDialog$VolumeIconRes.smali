.class Lmiui/view/VolumeDialog$VolumeIconRes;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeIconRes"
.end annotation


# instance fields
.field mutedIconRes:I

.field normalIconRes:I

.field selectedIconRes:I


# direct methods
.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    iput p2, p0, Lmiui/view/VolumeDialog$VolumeIconRes;->selectedIconRes:I

    iput p3, p0, Lmiui/view/VolumeDialog$VolumeIconRes;->mutedIconRes:I

    return-void
.end method

.method synthetic constructor <init>(IIILmiui/view/VolumeDialog$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(III)V

    return-void
.end method
