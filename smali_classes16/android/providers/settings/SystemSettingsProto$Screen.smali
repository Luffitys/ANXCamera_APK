.class public final Landroid/providers/settings/SystemSettingsProto$Screen;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Screen"
.end annotation


# static fields
.field public static final AUTO_BRIGHTNESS_ADJ:J = 0x10b00000005L

.field public static final BRIGHTNESS:J = 0x10b00000002L

.field public static final BRIGHTNESS_FLOAT:J = 0x10b00000006L

.field public static final BRIGHTNESS_FOR_VR:J = 0x10b00000003L

.field public static final BRIGHTNESS_FOR_VR_FLOAT:J = 0x10b00000007L

.field public static final BRIGHTNESS_MODE:J = 0x10b00000004L

.field public static final OFF_TIMEOUT:J = 0x10b00000001L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SystemSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/SystemSettingsProto$Screen;->this$0:Landroid/providers/settings/SystemSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
