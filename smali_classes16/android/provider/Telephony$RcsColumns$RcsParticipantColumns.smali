.class public interface abstract Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$RcsColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsParticipantColumns"
.end annotation


# static fields
.field public static final CANONICAL_ADDRESS_ID_COLUMN:Ljava/lang/String; = "canonical_address_id"

.field public static final RCS_ALIAS_COLUMN:Ljava/lang/String; = "rcs_alias"

.field public static final RCS_PARTICIPANT_ID_COLUMN:Ljava/lang/String; = "rcs_participant_id"

.field public static final RCS_PARTICIPANT_URI:Landroid/net/Uri;

.field public static final RCS_PARTICIPANT_URI_PART:Ljava/lang/String; = "participant"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/Telephony$RcsColumns;->CONTENT_AND_AUTHORITY:Landroid/net/Uri;

    const-string/jumbo v1, "participant"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$RcsColumns$RcsParticipantColumns;->RCS_PARTICIPANT_URI:Landroid/net/Uri;

    return-void
.end method
