.class public interface abstract Landroid/provider/Telephony$RcsColumns$RcsOutgoingMessageColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$RcsColumns$RcsMessageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$RcsColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsOutgoingMessageColumns"
.end annotation


# static fields
.field public static final OUTGOING_MESSAGE_URI:Landroid/net/Uri;

.field public static final OUTGOING_MESSAGE_URI_PART:Ljava/lang/String; = "outgoing_message"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/Telephony$RcsColumns;->CONTENT_AND_AUTHORITY:Landroid/net/Uri;

    const-string/jumbo v1, "outgoing_message"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$RcsColumns$RcsOutgoingMessageColumns;->OUTGOING_MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method
