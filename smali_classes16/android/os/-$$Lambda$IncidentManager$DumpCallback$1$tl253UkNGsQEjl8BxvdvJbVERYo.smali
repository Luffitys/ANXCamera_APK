.class public final synthetic Landroid/os/-$$Lambda$IncidentManager$DumpCallback$1$tl253UkNGsQEjl8BxvdvJbVERYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IncidentManager$DumpCallback$1;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IncidentManager$DumpCallback$1;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$$Lambda$IncidentManager$DumpCallback$1$tl253UkNGsQEjl8BxvdvJbVERYo;->f$0:Landroid/os/IncidentManager$DumpCallback$1;

    iput-object p2, p0, Landroid/os/-$$Lambda$IncidentManager$DumpCallback$1$tl253UkNGsQEjl8BxvdvJbVERYo;->f$1:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/os/-$$Lambda$IncidentManager$DumpCallback$1$tl253UkNGsQEjl8BxvdvJbVERYo;->f$0:Landroid/os/IncidentManager$DumpCallback$1;

    iget-object v1, p0, Landroid/os/-$$Lambda$IncidentManager$DumpCallback$1$tl253UkNGsQEjl8BxvdvJbVERYo;->f$1:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Landroid/os/IncidentManager$DumpCallback$1;->lambda$onDumpSection$0$IncidentManager$DumpCallback$1(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
