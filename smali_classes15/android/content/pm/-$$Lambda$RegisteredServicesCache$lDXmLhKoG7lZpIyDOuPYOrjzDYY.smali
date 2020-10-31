.class public final synthetic Landroid/content/pm/-$$Lambda$RegisteredServicesCache$lDXmLhKoG7lZpIyDOuPYOrjzDYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/RegisteredServicesCacheListener;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/-$$Lambda$RegisteredServicesCache$lDXmLhKoG7lZpIyDOuPYOrjzDYY;->f$0:Landroid/content/pm/RegisteredServicesCacheListener;

    iput-object p2, p0, Landroid/content/pm/-$$Lambda$RegisteredServicesCache$lDXmLhKoG7lZpIyDOuPYOrjzDYY;->f$1:Ljava/lang/Object;

    iput p3, p0, Landroid/content/pm/-$$Lambda$RegisteredServicesCache$lDXmLhKoG7lZpIyDOuPYOrjzDYY;->f$2:I

    iput-boolean p4, p0, Landroid/content/pm/-$$Lambda$RegisteredServicesCache$lDXmLhKoG7lZpIyDOuPYOrjzDYY;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/content/pm/-$$Lambda$RegisteredServicesCache$lDXmLhKoG7lZpIyDOuPYOrjzDYY;->f$0:Landroid/content/pm/RegisteredServicesCacheListener;

    iget-object v1, p0, Landroid/content/pm/-$$Lambda$RegisteredServicesCache$lDXmLhKoG7lZpIyDOuPYOrjzDYY;->f$1:Ljava/lang/Object;

    iget v2, p0, Landroid/content/pm/-$$Lambda$RegisteredServicesCache$lDXmLhKoG7lZpIyDOuPYOrjzDYY;->f$2:I

    iget-boolean v3, p0, Landroid/content/pm/-$$Lambda$RegisteredServicesCache$lDXmLhKoG7lZpIyDOuPYOrjzDYY;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/RegisteredServicesCache;->lambda$notifyListener$0(Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V

    return-void
.end method
