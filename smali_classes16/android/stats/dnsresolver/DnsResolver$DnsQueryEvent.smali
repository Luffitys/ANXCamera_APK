.class public final Landroid/stats/dnsresolver/DnsResolver$DnsQueryEvent;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/dnsresolver/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DnsQueryEvent"
.end annotation


# static fields
.field public static final CACHE_HIT:J = 0x10e00000003L

.field public static final CONNECTED:J = 0x10800000008L

.field public static final DNS_SERVER_INDEX:J = 0x10500000007L

.field public static final IP_VERSION:J = 0x10e00000004L

.field public static final LATENCY_MICROS:J = 0x10500000009L

.field public static final LINUX_ERRNO:J = 0x10e0000000aL

.field public static final PROTOCOL:J = 0x10e00000005L

.field public static final RCODE:J = 0x10e00000001L

.field public static final RETRY_TIMES:J = 0x10500000006L

.field public static final TYPE:J = 0x10e00000002L


# instance fields
.field final synthetic this$0:Landroid/stats/dnsresolver/DnsResolver;


# direct methods
.method public constructor <init>(Landroid/stats/dnsresolver/DnsResolver;)V
    .registers 2

    iput-object p1, p0, Landroid/stats/dnsresolver/DnsResolver$DnsQueryEvent;->this$0:Landroid/stats/dnsresolver/DnsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
