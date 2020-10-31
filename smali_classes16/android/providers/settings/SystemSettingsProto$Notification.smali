.class public final Landroid/providers/settings/SystemSettingsProto$Notification;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Notification"
.end annotation


# static fields
.field public static final LIGHT_PULSE:J = 0x10b00000003L

.field public static final SOUND:J = 0x10b00000001L

.field public static final SOUND_CACHE:J = 0x10b00000002L

.field public static final VIBRATION_INTENSITY:J = 0x10b00000004L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SystemSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/SystemSettingsProto$Notification;->this$0:Landroid/providers/settings/SystemSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
