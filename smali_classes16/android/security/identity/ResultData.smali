.class public abstract Landroid/security/identity/ResultData;
.super Ljava/lang/Object;
.source "ResultData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ResultData$Status;
    }
.end annotation


# static fields
.field public static final STATUS_NOT_IN_REQUEST_MESSAGE:I = 0x3

.field public static final STATUS_NOT_REQUESTED:I = 0x2

.field public static final STATUS_NO_ACCESS_CONTROL_PROFILES:I = 0x6

.field public static final STATUS_NO_SUCH_ENTRY:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_READER_AUTHENTICATION_FAILED:I = 0x5

.field public static final STATUS_USER_AUTHENTICATION_FAILED:I = 0x4


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAuthenticatedData()[B
.end method

.method public abstract getEntry(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract getEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageAuthenticationCode()[B
.end method

.method public abstract getNamespaces()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStaticAuthenticationData()[B
.end method

.method public abstract getStatus(Ljava/lang/String;Ljava/lang/String;)I
.end method
