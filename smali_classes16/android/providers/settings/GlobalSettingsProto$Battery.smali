.class public final Landroid/providers/settings/GlobalSettingsProto$Battery;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Battery"
.end annotation


# static fields
.field public static final DISCHARGE_DURATION_THRESHOLD:J = 0x10b00000001L

.field public static final DISCHARGE_THRESHOLD:J = 0x10b00000002L

.field public static final SAVER_CONSTANTS:J = 0x10b00000003L

.field public static final SAVER_DEVICE_SPECIFIC_CONSTANTS:J = 0x10b00000004L

.field public static final STATS_CONSTANTS:J = 0x10b00000005L

.field public static final TIP_CONSTANTS:J = 0x10b00000006L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Battery;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
