.class public final synthetic Landroid/telecom/Logging/-$$Lambda$SessionManager$hhtZwTEbvO-fLNlAvB6Do9_2gW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;


# instance fields
.field public final synthetic f$0:Landroid/telecom/Logging/SessionManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Logging/SessionManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Logging/-$$Lambda$SessionManager$hhtZwTEbvO-fLNlAvB6Do9_2gW4;->f$0:Landroid/telecom/Logging/SessionManager;

    return-void
.end method


# virtual methods
.method public final get()J
    .registers 3

    iget-object v0, p0, Landroid/telecom/Logging/-$$Lambda$SessionManager$hhtZwTEbvO-fLNlAvB6Do9_2gW4;->f$0:Landroid/telecom/Logging/SessionManager;

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->lambda$new$1$SessionManager()J

    move-result-wide v0

    return-wide v0
.end method
