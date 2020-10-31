.class public Landroid/net/DnsResolver$DnsException;
.super Ljava/lang/Exception;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsException"
.end annotation


# instance fields
.field public final code:I


# direct methods
.method constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/net/DnsResolver$DnsException;->code:I

    return-void
.end method
