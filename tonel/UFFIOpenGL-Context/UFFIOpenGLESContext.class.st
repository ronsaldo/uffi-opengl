"
I am used to bind an OpenGL ES context using OSWindow.
"
Class {
	#name : #UFFIOpenGLESContext,
	#superclass : #UFFIOpenGLContext,
	#category : #'UFFIOpenGL-Context'
}

{ #category : #settings }
UFFIOpenGLESContext class >> defaultGLAttributes [
	^ OSWindowGLAttributes new setForOpenGLES20; srgbFramebuffer: false.
]

{ #category : #version }
UFFIOpenGLESContext >> isAtLeastDesktopVersionMajor: versionMajor versionMinor: versionMinor [
	^ true
]

{ #category : #version }
UFFIOpenGLESContext >> isAtLeastEmbeddedVersionMajor: versionMajor versionMinor: versionMinor [
	^ (version first > versionMajor) or: [ version first = versionMajor and: [ version second >= versionMinor] ]
]

{ #category : #'version testing' }
UFFIOpenGLESContext >> isDesktopVersion [
	^ false
]

{ #category : #'version testing' }
UFFIOpenGLESContext >> isEmbeddedVersion [
	^ true
]
