.class public Landroid/media/AudioStatusNotify$AppInfo;
.super Ljava/lang/Object;
.source "AudioStatusNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public icon:Landroid/graphics/Bitmap;

.field public name:Ljava/lang/String;

.field public pid:I

.field public pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
