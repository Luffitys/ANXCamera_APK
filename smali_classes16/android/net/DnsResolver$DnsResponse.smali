.class public final Landroid/net/DnsResolver$DnsResponse;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DnsResponse"
.end annotation


# instance fields
.field public final answerbuf:[B

.field public final rcode:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/DnsResolver$DnsResponse;->answerbuf:[B

    iput p2, p0, Landroid/net/DnsResolver$DnsResponse;->rcode:I

    return-void
.end method
