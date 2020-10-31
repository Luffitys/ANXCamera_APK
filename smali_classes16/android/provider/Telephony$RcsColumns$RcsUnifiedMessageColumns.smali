.class public interface abstract Landroid/provider/Telephony$RcsColumns$RcsUnifiedMessageColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$RcsColumns$RcsIncomingMessageColumns;
.implements Landroid/provider/Telephony$RcsColumns$RcsOutgoingMessageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$RcsColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsUnifiedMessageColumns"
.end annotation


# static fields
.field public static final MESSAGE_TYPE_COLUMN:Ljava/lang/String; = "message_type"

.field public static final MESSAGE_TYPE_INCOMING:I = 0x1

.field public static final MESSAGE_TYPE_OUTGOING:I = 0x0

.field public static final UNIFIED_INCOMING_MESSAGE_VIEW:Ljava/lang/String; = "unified_incoming_message_view"

.field public static final UNIFIED_MESSAGE_URI:Landroid/net/Uri;

.field public static final UNIFIED_MESSAGE_URI_PART:Ljava/lang/String; = "message"

.field public static final UNIFIED_OUTGOING_MESSAGE_VIEW:Ljava/lang/String; = "unified_outgoing_message_view"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/Telephony$RcsColumns;->CONTENT_AND_AUTHORITY:Landroid/net/Uri;

    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$RcsColumns$RcsUnifiedMessageColumns;->UNIFIED_MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method
