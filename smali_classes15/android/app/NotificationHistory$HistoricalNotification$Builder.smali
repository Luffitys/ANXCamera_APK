.class public final Landroid/app/NotificationHistory$HistoricalNotification$Builder;
.super Ljava/lang/Object;
.source "NotificationHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationHistory$HistoricalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mChannelName:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mPackage:Ljava/lang/String;

.field private mPostedTimeMs:J

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUid:I

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1102(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public build()Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 4

    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;-><init>(Landroid/app/NotificationHistory$1;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mPackage:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->access$102(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mChannelName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->access$202(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mChannelId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->access$302(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mUid:I
    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->access$402(Landroid/app/NotificationHistory$HistoricalNotification;I)I

    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mUserId:I
    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->access$502(Landroid/app/NotificationHistory$HistoricalNotification;I)I

    iget-wide v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mPostedTimeMs:J
    invoke-static {v0, v1, v2}, Landroid/app/NotificationHistory$HistoricalNotification;->access$602(Landroid/app/NotificationHistory$HistoricalNotification;J)J

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->access$702(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mText:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->access$802(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mIcon:Landroid/graphics/drawable/Icon;
    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->access$902(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    # setter for: Landroid/app/NotificationHistory$HistoricalNotification;->mConversationId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->access$1002(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    return-object p0
.end method

.method public setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    return-object p0
.end method

.method public setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    return-object p0
.end method
