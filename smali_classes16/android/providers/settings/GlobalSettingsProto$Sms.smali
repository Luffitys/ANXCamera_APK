.class public final Landroid/providers/settings/GlobalSettingsProto$Sms;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sms"
.end annotation


# static fields
.field public static final ACCESS_RESTRICTION_ENABLED:J = 0x10b00000007L

.field public static final OUTGOING_CHECK_INTERVAL_MS:J = 0x10b00000001L

.field public static final OUTGOING_CHECK_MAX_COUNT:J = 0x10b00000002L

.field public static final SHORT_CODES_UPDATE_CONTENT_URL:J = 0x10b00000005L

.field public static final SHORT_CODES_UPDATE_METADATA_URL:J = 0x10b00000006L

.field public static final SHORT_CODE_CONFIRMATION:J = 0x10b00000003L

.field public static final SHORT_CODE_RULE:J = 0x10b00000004L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Sms;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
