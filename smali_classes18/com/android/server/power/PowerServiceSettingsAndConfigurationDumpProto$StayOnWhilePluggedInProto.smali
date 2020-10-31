.class public final Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto$StayOnWhilePluggedInProto;
.super Ljava/lang/Object;
.source "PowerServiceSettingsAndConfigurationDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StayOnWhilePluggedInProto"
.end annotation


# static fields
.field public static final IS_STAY_ON_WHILE_PLUGGED_IN_AC:J = 0x10800000001L

.field public static final IS_STAY_ON_WHILE_PLUGGED_IN_USB:J = 0x10800000002L

.field public static final IS_STAY_ON_WHILE_PLUGGED_IN_WIRELESS:J = 0x10800000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto$StayOnWhilePluggedInProto;->this$0:Lcom/android/server/power/PowerServiceSettingsAndConfigurationDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
