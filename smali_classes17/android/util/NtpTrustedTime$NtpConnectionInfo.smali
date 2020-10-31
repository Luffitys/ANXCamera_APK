.class Landroid/util/NtpTrustedTime$NtpConnectionInfo;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NtpConnectionInfo"
.end annotation


# instance fields
.field private final mServer:Ljava/lang/String;

.field private final mTimeoutMillis:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mServer:Ljava/lang/String;

    iput p2, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mTimeoutMillis:I

    return-void
.end method


# virtual methods
.method public getServer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method getTimeoutMillis()I
    .registers 2

    iget v0, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mTimeoutMillis:I

    return v0
.end method
