.class public interface abstract Landroid/provider/Telephony$RcsColumns;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsColumns"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$RcsColumns$RcsCanonicalAddressHelper;,
        Landroid/provider/Telephony$RcsColumns$RcsUnifiedEventHelper;,
        Landroid/provider/Telephony$RcsColumns$RcsEventTypes;,
        Landroid/provider/Telephony$RcsColumns$RcsParticipantEventColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsThreadEventColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsFileTransferColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsUnifiedMessageColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsMessageDeliveryColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsOutgoingMessageColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsIncomingMessageColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsMessageColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsParticipantHelpers;,
        Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsUnifiedThreadColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;,
        Landroid/provider/Telephony$RcsColumns$Rcs1To1ThreadColumns;,
        Landroid/provider/Telephony$RcsColumns$RcsThreadColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "rcs"

.field public static final CONTENT_AND_AUTHORITY:Landroid/net/Uri;

.field public static final IS_RCS_TABLE_SCHEMA_CODE_COMPLETE:Z = false

.field public static final TIMESTAMP_NOT_SET:J = 0x0L

.field public static final TRANSACTION_FAILED:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://rcs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$RcsColumns;->CONTENT_AND_AUTHORITY:Landroid/net/Uri;

    return-void
.end method
