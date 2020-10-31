.class Landroid/security/identity/CredstoreResultData$EntryData;
.super Ljava/lang/Object;
.source "CredstoreResultData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredstoreResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryData"
.end annotation


# instance fields
.field mStatus:I

.field mValue:[B


# direct methods
.method constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/identity/CredstoreResultData$EntryData;->mValue:[B

    iput p2, p0, Landroid/security/identity/CredstoreResultData$EntryData;->mStatus:I

    return-void
.end method
