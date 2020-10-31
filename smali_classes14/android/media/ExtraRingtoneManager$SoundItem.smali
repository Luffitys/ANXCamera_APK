.class Landroid/media/ExtraRingtoneManager$SoundItem;
.super Ljava/lang/Object;
.source "ExtraRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExtraRingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundItem"
.end annotation


# instance fields
.field buildInPathRes:I

.field mActualDefaultRingtoneUri:Landroid/net/Uri;

.field mDefaultRingtoneUri:Landroid/net/Uri;

.field mRingtoneType:I

.field mSettingType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    iput-object p2, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mActualDefaultRingtoneUri:Landroid/net/Uri;

    iput-object p3, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mDefaultRingtoneUri:Landroid/net/Uri;

    iput-object p4, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    iput p5, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->buildInPathRes:I

    return-void
.end method
