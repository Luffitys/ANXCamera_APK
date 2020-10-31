.class public Lmiui/util/NotificationInjector;
.super Ljava/lang/Object;
.source "NotificationInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelId(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
