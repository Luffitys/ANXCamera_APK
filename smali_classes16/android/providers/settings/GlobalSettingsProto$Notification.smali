.class public final Landroid/providers/settings/GlobalSettingsProto$Notification;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Notification"
.end annotation


# static fields
.field public static final BUBBLES:J = 0x10b00000006L

.field public static final MAX_NOTIFICATION_ENQUEUE_RATE:J = 0x10b00000001L

.field public static final SHOW_NOTIFICATION_CHANNEL_WARNINGS:J = 0x10b00000002L

.field public static final SMART_REPLIES_IN_NOTIFICATIONS_FLAGS:J = 0x10b00000004L

.field public static final SMART_SUGGESTIONS_IN_NOTIFICATIONS_FLAGS:J = 0x10b00000005L

.field public static final SNOOZE_OPTIONS:J = 0x10b00000003L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Notification;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
