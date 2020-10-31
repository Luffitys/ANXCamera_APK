.class public interface abstract Landroid/provider/Telephony$RcsColumns$RcsThreadColumns;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$RcsColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsThreadColumns"
.end annotation


# static fields
.field public static final RCS_THREAD_ID_COLUMN:Ljava/lang/String; = "rcs_thread_id"

.field public static final RCS_THREAD_URI:Landroid/net/Uri;

.field public static final RCS_THREAD_URI_PART:Ljava/lang/String; = "thread"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/Telephony$RcsColumns;->CONTENT_AND_AUTHORITY:Landroid/net/Uri;

    const-string/jumbo v1, "thread"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$RcsColumns$RcsThreadColumns;->RCS_THREAD_URI:Landroid/net/Uri;

    return-void
.end method
