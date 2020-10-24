.class public Lorg/jcodec/containers/mp4/DefaultBoxes;
.super Lorg/jcodec/containers/mp4/Boxes;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 5

    const-class v0, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;

    const-class v1, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    invoke-direct {p0}, Lorg/jcodec/containers/mp4/Boxes;-><init>()V

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieExtendsBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/MovieExtendsBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieExtendsHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/MovieExtendsHeaderBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/SegmentIndexBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/SegmentIndexBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/SegmentTypeBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/SegmentTypeBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TrackExtendsBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/TrackExtendsBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/VideoMediaHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/VideoMediaHeaderBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/MovieBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/MovieHeaderBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TrakBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/TrakBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TrackHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/TrackHeaderBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "edts"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/EditListBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/EditListBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MediaBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/MediaBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/MediaHeaderBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/HandlerBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/HandlerBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/DataInfoBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/DataInfoBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "stbl"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/SampleDescriptionBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/SampleDescriptionBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TimeToSampleBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/TimeToSampleBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-class v3, Lorg/jcodec/containers/mp4/boxes/SyncSamplesBox;

    const-string v4, "stss"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-class v3, Lorg/jcodec/containers/mp4/boxes/PartialSyncSamplesBox;

    const-string v4, "stps"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/SampleSizesBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/SampleSizesBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/ChunkOffsetsBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/ChunkOffsetsBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-class v3, Lorg/jcodec/containers/mp4/boxes/KeysBox;

    const-string v4, "keys"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/IListBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/IListBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "mvex"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "moof"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "traf"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "mfra"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "skip"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/DataRefBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/DataRefBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "ipro"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "sinf"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/ChunkOffsets64Box;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/ChunkOffsets64Box;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/SoundMediaHeaderBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "clip"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/ClipRegionBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/ClipRegionBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "tapt"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "gmhd"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "tmcd"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v3, "tref"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-class v2, Lorg/jcodec/containers/mp4/boxes/ClearApertureBox;

    const-string v3, "clef"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-class v2, Lorg/jcodec/containers/mp4/boxes/ProductionApertureBox;

    const-string v3, "prof"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-class v2, Lorg/jcodec/containers/mp4/boxes/EncodedPixelBox;

    const-string v3, "enof"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/UdtaBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/NameBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/jcodec/containers/mp4/boxes/NameBox;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-string v2, "mdta"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jcodec/containers/mp4/boxes/MovieFragmentHeaderBox;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TrackFragmentHeaderBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jcodec/containers/mp4/boxes/TrackFragmentHeaderBox;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBox;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TrunBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jcodec/containers/mp4/boxes/TrunBox;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MsrtBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jcodec/containers/mp4/boxes/MsrtBox;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MtagBox;->fourcc()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/jcodec/containers/mp4/boxes/MtagBox;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
