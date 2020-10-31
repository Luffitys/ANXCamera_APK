.class public Lcom/miui/enterprise/settings/EnterpriseSettings$Phone;
.super Ljava/lang/Object;
.source "EnterpriseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/settings/EnterpriseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Phone"
.end annotation


# static fields
.field public static final AUTO_RECORD_PHONECALL:Ljava/lang/String; = "ep_force_auto_call_record"

.field public static final AUTO_RECORD_PHONECALL_DIR:Ljava/lang/String; = "ep_force_auto_call_record_dir"

.field public static final CALL_BLACK_LIST:Ljava/lang/String; = "ep_call_black_list"

.field public static final CALL_RESTRICTION_MODE:Ljava/lang/String; = "ep_call_restriction_mode"

.field public static final CALL_WHITE_LIST:Ljava/lang/String; = "ep_call_white_list"

.field public static final CELLULAR_STATUS:Ljava/lang/String; = "ep_cellular_status"

.field public static final DISABLE_CALL_FORWARD:Ljava/lang/String; = "ep_disable_call_forward"

.field public static final DISABLE_CALL_LOG:Ljava/lang/String; = "ep_disable_call_log"

.field public static final PHONECALL_STATUS:Ljava/lang/String; = "ep_phone_call_status"

.field public static final SMS_BLACK_LIST:Ljava/lang/String; = "ep_sms_black_list"

.field public static final SMS_RESTRICTION_MODE:Ljava/lang/String; = "ep_sms_restriction_mode"

.field public static final SMS_STATUS:Ljava/lang/String; = "ep_sms_status"

.field public static final SMS_WHITE_LIST:Ljava/lang/String; = "ep_sms_white_list"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
