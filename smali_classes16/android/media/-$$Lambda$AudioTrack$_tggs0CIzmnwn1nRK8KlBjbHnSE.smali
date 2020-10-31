.class public final synthetic Landroid/media/-$$Lambda$AudioTrack$_tggs0CIzmnwn1nRK8KlBjbHnSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/Utils$ListenerList$Listener;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioTrack;

.field public final synthetic f$1:Landroid/media/AudioTrack$OnCodecFormatChangedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioTrack$_tggs0CIzmnwn1nRK8KlBjbHnSE;->f$0:Landroid/media/AudioTrack;

    iput-object p2, p0, Landroid/media/-$$Lambda$AudioTrack$_tggs0CIzmnwn1nRK8KlBjbHnSE;->f$1:Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioTrack$_tggs0CIzmnwn1nRK8KlBjbHnSE;->f$0:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroid/media/-$$Lambda$AudioTrack$_tggs0CIzmnwn1nRK8KlBjbHnSE;->f$1:Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    check-cast p2, Landroid/media/AudioMetadataReadMap;

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioTrack;->lambda$addOnCodecFormatChangedListener$0$AudioTrack(Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V

    return-void
.end method
